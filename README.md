# Used Car Market Analysis (Quikr Dataset)

A data analysis project exploring the Indian used car market using a real-world dataset sourced from Quikr, a popular Indian classifieds platform. The goal is to uncover pricing patterns, depreciation trends, and market insights that would help a buyer or dealership make informed decisions.

---

## Business Questions

1. What is the average resale price per company?
2. How does car age affect resale price?
3. Do higher mileage cars sell for significantly less?
4. Which fuel type (Petrol vs. Diesel) has a higher average resale price?
5. Which brand dominates the used car market by listing volume?

---

## Dataset

- **Source:** [Quikr Used Cars Dataset – Kaggle](https://www.kaggle.com/)
- **Rows:** ~890 listings
- **Columns:** `name`, `company`, `year`, `Price`, `kms_driven`, `fuel_type`

---

## 🛠️ Tools Used

| Tool | Purpose |
|------|---------|
| Python (Pandas) | Data cleaning & preprocessing |
| MySQL | Data storage & querying |
| Power BI | Dashboard & visualization |

---

## 🔄 Workflow

```
Raw CSV → Python/Pandas (clean) → Clean CSV → MySQL (query & some changes) → Power BI (visualize)
```

### Data Cleaning (Python)
- Removed rows with missing or malformed values
- Stripped commas from `Price` and converted to numeric
- Removed `" kms"` text from `kms_driven` and converted to numeric
- Filtered out `"Ask For Price"` listings
- Dropped duplicate rows
- Derived `car_age` from `year` column

### SQL Analysis (MySQL)
- Removed rows containing missing valuable data
- Aggregated average price and volume by brand
- Analyzed price trends across car age and mileage ranges
- Compared resale value between Petrol and Diesel vehicles

### Dashboard (Power BI)
- Interactive slicers for brand, fuel type, and price range
- Bar charts, line charts, and KPI cards
- Depreciation curve (car age vs. average price)

---

## 📊 Key Insights

> *(To be updated after analysis is complete)*

---

## 📁 Project Structure

```
quikr-used-car-analysis/
│
├── data/
│   ├── quikr_car.csv           # Raw dataset
│   └── quikr_car_cleaned.csv   # Cleaned dataset
│
├── notebooks/
│   └── cleaning.ipynb          # Python cleaning script
│
├── sql/
│   └── analysis_queries.sql    # All SQL queries used
│
├── dashboard/
│   └── quikr_analysis.pbix     # Power BI dashboard file
│
└── README.md
```

---

## 👤 Author

**Ythan**
BS Information Systems — De La Salle University
Aspiring Data Analyst | [LinkedIn](#) | [GitHub](#)
