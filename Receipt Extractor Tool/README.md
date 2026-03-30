# AI-Driven Ledger Automation

This project is a **Digital Transformation** utility designed to bridge the gap between physical financial documents and digital record-keeping. Using the **Gemini 3.1 Flash-Lite** model, this Google Apps Script automates the extraction of structured data from receipt images and populates a standardized Google Sheets ledger.

---

## The Value Proposition
* **Efficiency:** Reduces manual data entry time by approximately 90%.
* **Accuracy:** Leverages LLM vision capabilities to interpret faded thermal paper and diverse receipt layouts (e.g., Naivas, NTSA, Starbucks).
* **Multilingual Support:** Automatically recognizes and translates non-English receipts into English for unified reporting.
* **Scalability:** Processes 50+ receipts in minutes with a single click or an automated hourly trigger.

---

## Setup & Installation

### 1. Prepare the Google Sheet
1. Create a new Google Sheet.
2. Rename the active tab to **`Ledger`**.
3. Create the following headers in **Row 1** (Columns A through J):
   > **Category | Subcategory | Description | Receipt Title | Entity | Type | Amount | Date | Time | Link**

### 2. Configure Google Drive
1. Create a folder named `Receipts_Input` (where you will drop new images).
2. Create a folder named `Receipts_Processed` (where the script will archive finished files).
3. Copy the **Folder IDs** from the URL bar (the string of characters after `/folders/`).

### 3. Obtain a Gemini API Key
1. Visit [Google AI Studio](https://aistudio.google.com/).
2. Click **"Get API Key"** and create a key for a new project.

### 4. Deploy the Script
1. In your Google Sheet, go to **Extensions > Apps Script**.
2. Replace the default code with the `Code.gs` provided in this repository.
3. Paste your **API Key**, **Folder IDs**, and **Sheet ID** into the `CONFIGURATION` section at the top of the script.
4. Hit **Save** and **Run**. (Grant the necessary permissions when prompted by Google).

---

## How It Works
1.  **Trigger:** The script scans the `Receipts_Input` folder for image files (JPG, PNG, WebP).
2.  **Vision Processing:** The image is base64 encoded and sent to the **Gemini 3.1** API.
3.  **JSON Extraction:** The AI extracts the merchant name, total amount, and date, then categorizes the expense into a structured JSON object.
4.  **Logging:** Data is appended to the next available row in the "Ledger" sheet, including a direct link to the original image for audit purposes.
5.  **Archiving:** The processed file is moved to the `Receipts_Processed` folder to maintain an organized workspace.

---

## Sample Output
| Category | Entity | Amount | Date | Link |
| :--- | :--- | :--- | :--- | :--- |
| Food | Naivas Supermarket | 1,250.00 | 2026-03-29 | [View Receipt] |
| Transport | NTSA | 550.00 | 2026-03-28 | [View Receipt] |

---

## License
Distributed under the MIT License. See `LICENSE` for more information.