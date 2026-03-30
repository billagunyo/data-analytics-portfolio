// --- CONFIGURATION: REPLACE THESE VALUES ---
const API_KEY = 'YOUR_API_KEY_HERE'; 
const INPUT_FOLDER_ID = 'YOUR_INPUT_FOLDER_ID_HERE';
const PROCESSED_FOLDER_ID = 'YOUR_PROCESSED_FOLDER_ID_HERE';
const SHEET_ID = 'YOUR_GOOGLE_SHEET_ID_HERE';
const TIMEZONE = "GMT+3"; // e.g., Nairobi/East Africa
// --------------------------------------------

function processReceipts() {
  const inputFolder = DriveApp.getFolderById(INPUT_FOLDER_ID);
  const processedFolder = DriveApp.getFolderById(PROCESSED_FOLDER_ID);
  const ss = SpreadsheetApp.openById(SHEET_ID);
  const sheet = ss.getSheetByName('Ledger');
  
  if (!sheet) {
    console.error("ERROR: 'Ledger' tab not found. Please rename your sheet tab to 'Ledger'.");
    return;
  }

  const files = inputFolder.getFiles();
  if (!files.hasNext()) {
    console.log("No new receipts found in the Input folder.");
    return;
  }

  while (files.hasNext()) {
    const file = files.next();
    const mimeType = file.getMimeType();
    const allowedTypes = ['image/jpeg', 'image/png', 'image/webp', 'image/jpg'];
    
    // Skip non-image files (PDFs, folders, etc.)
    if (allowedTypes.indexOf(mimeType) === -1) {
      console.warn("Skipping unsupported file type: " + file.getName());
      continue; 
    }

    try {
      console.log("Analyzing: " + file.getName());
      const blob = file.getBlob();
      const base64Image = Utilities.base64Encode(blob.getBytes());
      
      const data = getGeminiExtraction(base64Image, mimeType);
      
      const now = new Date();
      const displayDate = data.date || Utilities.formatDate(now, TIMEZONE, "yyyy-MM-dd");
      const displayTime = Utilities.formatDate(now, TIMEZONE, "HH:mm:ss");

      // Appending to Sheet Columns A through J
      sheet.appendRow([
        data.category, 
        data.subcategory, 
        data.description, 
        data.receipt_title, 
        data.entity, 
        data.type, 
        data.amount,
        displayDate, 
        displayTime, 
        file.getUrl()
      ]);

      // Move to archive to prevent double-processing
      file.moveTo(processedFolder);
      console.log('Successfully recorded: ' + file.getName());
    } catch (e) {
      console.error('Error processing ' + file.getName() + ': ' + e.toString());
    }
  }
}

/**
 * Interface for Gemini AI API
 * Uses the 2026 Stable Flash-Lite model for vision-to-data tasks.
 */
function getGeminiExtraction(base64Image, mimeType) {
  const modelName = 'gemini-3.1-flash-lite-preview';
  const url = `https://generativelanguage.googleapis.com/v1beta/models/${modelName}:generateContent?key=${API_KEY}`;
  
  const prompt = `Extract receipt data. Return ONLY a JSON object with: 
  category, subcategory, description, receipt_title, entity, type, amount, date. 
  'type' is 'Expense'. 'amount' is a number. 'date' is YYYY-MM-DD. 
  Translate descriptions to English if necessary.`;
  
  const payload = {
    contents: [{
      parts: [
        { text: prompt },
        { inline_data: { mime_type: mimeType, data: base64Image } }
      ]
    }],
    generationConfig: { 
      response_mime_type: "application/json" 
    }
  };

  const options = {
    method: 'post',
    contentType: 'application/json',
    payload: JSON.stringify(payload),
    muteHttpExceptions: true
  };

  const response = UrlFetchApp.fetch(url, options);
  const responseText = response.getContentText();
  
  if (response.getResponseCode() !== 200) {
    throw new Error(`API Error: ${responseText}`);
  }

  const json = JSON.parse(responseText);
  if (json.candidates && json.candidates[0]) {
    const resultText = json.candidates[0].content.parts[0].text;
    return JSON.parse(resultText);
  } else {
    throw new Error("Gemini returned an empty response. Check image quality.");
  }
}