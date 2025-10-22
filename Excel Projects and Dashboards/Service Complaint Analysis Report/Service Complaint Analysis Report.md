# Service Complaint Analysis Report

This README summarizes a time-series analysis of service complaints and response times collected across multiple dates and time slots. The report includes raw and cleaned data, statistical visualizations, and root cause analysis tools to support operational improvement.

---

## 1. Time-Series Complaint Data

### Data Structure
- **Dates Covered**: 09-Jan-2017 to 03-Feb-2017
- **Time Slots**: 9:00 AM, 11:00 AM, 1:00 PM, 3:00 PM, 5:00 PM
- **Metric**: Number of complaints recorded per time slot per day

### Sample Extract

| Time      | 09-Jan | 10-Jan | 11-Jan | ... | 03-Feb |
|-----------|--------|--------|--------|-----|--------|
| 9:00 AM   | 81     | 82     | 81     | ... | 88     |
| 11:00 AM  | 73     | 87     | 83     | ... | 79     |
| 1:00 PM   | 85     | 88     | 76     | ... | 92     |
| 3:00 PM   | 90     | 78     | 84     | ... | 83     |
| 5:00 PM   | 88     | 83     | 82     | ... | 77     |

---

## 2. Data Preparation

- **Raw Data**: Original time-series matrix of complaints
- **Cleaned Data**: Validated and formatted for analysis, with missing or anomalous entries addressed

---

## 3. Visualizations

### Histogram: Number of Complaints
- Displays frequency distribution of complaint counts
- Highlights peak complaint volumes and common ranges

### Scatter Diagram: Response Time Over Time
- Plots complaint response times against dates
- Reveals patterns, trends, and outliers in service responsiveness

### Control Chart: Complaints Over Time
- Monitors process stability across time slots
- Includes upper and lower control limits to detect abnormal variation

### Pareto Chart: Complaints by Category
- Ranks complaint categories by frequency
- Identifies top contributors to overall complaint volume (80/20 rule)

### Fishbone Diagram: Root Cause Analysis
- Maps potential causes of recurring complaints
- Categorizes issues into areas such as personnel, process, equipment, and environment

---

## Notes

- Time-based analysis supports identification of peak complaint periods
- Control charts and scatter plots aid in assessing service consistency
- Pareto and fishbone tools guide targeted corrective actions