# Analysis of Student Performance

This notebook performs an exploratory data analysis, clustering, and regression analysis on a dataset related to student performance.

## Notebook Structure

1.  **Import Libraries and Load Data**: Necessary libraries are imported and the dataset is loaded into a pandas DataFrame.
2.  **Data Visualization and Cleaning**: Initial data exploration, handling of missing values, and outlier detection are performed.
3.  **Clustering**: K-Means clustering is applied to the numerical features of the dataset. The Elbow Method is used to determine an appropriate number of clusters, and PCA is used to visualize the clusters.
4.  **Regression Analysis**: A linear regression model is built to predict the 'Curricular units 1st sem (grade)' based on other numerical features. The model's performance is evaluated using Mean Squared Error (MSE) and R-squared.

## Dataset

The dataset `Group_9_Dataset.csv` contains various attributes related to students.

## Analysis Steps

-   **Data Loading**: The dataset is loaded using pandas.
-   **Data Cleaning**: Missing values are imputed using the median for numeric features and the mode for categorical features. Outliers are identified using the IQR method and visualized with boxplots.
-   **Correlation Analysis**: The correlation matrix and heatmap for numerical features are generated to understand the relationships between variables.
-   **Clustering**: K-Means clustering is applied after scaling the numerical features. The Elbow method suggests a suitable number of clusters, and PCA is used for visualization.
-   **Regression**: A linear regression model is trained and evaluated to predict student grades in the first semester.

## Results

-   The initial analysis showed no missing values in the dataset.
-   Outliers were detected in several numerical features.
-   A correlation analysis was performed to understand feature relationships.
-   K-Means clustering with 3 clusters was applied and visualized using PCA.
-   The linear regression model achieved an R-squared value of approximately 0.79, indicating a reasonably good fit for predicting first-semester grades.

## Libraries Used

-   pandas
-   numpy
-   matplotlib.pyplot
-   sklearn (SimpleImputer, KMeans, StandardScaler, train_test_split, LinearRegression, mean_squared_error, r2_score, PCA)