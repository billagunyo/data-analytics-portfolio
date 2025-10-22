# Weather Prediction Project

This notebook outlines the process of preparing a weather dataset for prediction. It covers data loading, preprocessing, and feature engineering steps.

## Project Phases

1.  **Data Preprocessing and Cleaning:** This phase focuses on handling missing values, outliers, and duplicate records to ensure data quality.
2.  **Feature Engineering:** This phase involves creating new features, performing dimensionality reduction, binning and discretization, and scaling features to enhance the dataset for predictive modeling.

## Notebook Structure

The notebook is organized into the following sections:

-   **Import Data:** Loads the dataset from a specified file path.
-   **Phase One: Data Preprocessing and Cleaning:**
    -   Handling Missing Values: Identifies and handles missing values using techniques like dropping columns with excessive missing data and imputing remaining missing values.
    -   Handling Outliers: Identifies and handles outliers in numerical columns using the Interquartile Range (IQR) method.
    -   Dealing with Duplicate Records: Removes duplicate rows from the dataset.
    -   Data Transformation: Performs transformations like Label Encoding and One-Hot Encoding on categorical features and applies StandardScaler to numerical features.
-   **Phase 2: Feature Engineering:**
    -   Creating New Features: Generates new features from existing ones, such as temperature range, squared wind speeds, and interaction terms. Extracts date-related features like day of the week and month.
    -   Dimensionality Reduction: Applies Principal Component Analysis (PCA) to reduce the dimensionality of the transformed features.
    -   Binning and Discretization: Divides continuous features like Rainfall into discrete bins.
    -   Feature Scaling: Scales numerical features using StandardScaler.

## Dependencies

The notebook requires the following libraries:

-   pandas
-   scikit-learn

Make sure to install them before running the notebook.