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

## Tools Used

| Tool | Purpose |
|------|---------|
| Python (Pandas) | Data cleaning & preprocessing |
| MySQL | Data storage & querying |
| Power BI | Dashboard & visualization |

---

## Workflow

```
Raw CSV → Python/Pandas (clean) → Clean CSV → MySQL (query) → Power BI (visualize)
```

### Data Cleaning (Python)
- Removed rows with missing or malformed values
- Stripped commas from `Price` and converted to numeric
- Removed `" kms"` text from `kms_driven` and converted to numeric
- Filtered out `"Ask For Price"` listings
- Dropped duplicate rows
- Derived `car_age` from `year` column

### SQL Analysis (MySQL)
- Aggregated average price and volume by brand
- Analyzed price trends across car age and mileage ranges
- Compared resale value between Petrol and Diesel vehicles

### Dashboard (Power BI)
- Interactive slicers for brand and fuel type
- Bar charts, line charts, scatter plot, and KPI cards
  
---

## 📊 Dashboard Preview
<img width="1223" height="687" alt="Screenshot 2026-06-14 173350" src="https://github.com/user-attachments/assets/3da9f256-b150-41b5-adbd-fa43a8ffd9b2" />

---

## 💡 Key Insights

1. **Average resale price varies widely by brand.** Jaguar leads with the highest average resale price at ₹2.50M, while Fiat sits at the lowest with ₹121.50K, reflecting the stark gap between luxury and budget segments in the used car market.

2. **Car age is a strong predictor of resale price.** Prices are highest for newer cars and decline steadily as age increases, following a classic depreciation curve. Notable dips occur around the 15–20 year mark, after which prices stabilize at low values which suggest that beyond a certain age, cars retain minimal resale value regardless of further aging.

3. **Mileage shows a weak relationship with price.** Most listings cluster between 0–100,000 kms with prices spread across all ranges, suggesting that mileage alone is not a reliable predictor of resale value in this dataset. Brand and age appear to be stronger pricing factors.

4. **Diesel cars command a higher average resale price than Petrol.** Diesel averages ₹0.52M compared to Petrol's ₹0.31M likely due to diesel vehicles being more common in larger, higher value car segments.

5. **Maruti dominates the used car market by listing volume.** With over 200 listings, Maruti significantly outnumbers all other brands, followed by Hyundai and Mahindra.

---

## ✅ Recommendations

- **For buyers on a budget:** Maruti and Hyundai offer the most options in the market, giving buyers more negotiating power due to high supply volume.
- **For buyers prioritizing value retention:** Avoid cars older than 15 years. The data shows a sharp depreciation drop beyond that point with little price recovery.
- **For buyers choosing between fuel types:** Diesel cars carry a higher average resale price, but consider total cost of ownership (fuel costs, maintenance) before deciding.
- **For sellers:** Listing while the car is under 10 years old yields the highest average resale returns based on the depreciation curve observed.

---

## 👤 Author

**Ythan**
BS Information Systems — De La Salle University
Aspiring Data Analyst | [LinkedIn](#) | [GitHub](#)
