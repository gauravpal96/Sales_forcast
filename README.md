# 📈 Sales Forecasting & Analysis Project

A complete end-to-end Data Analyst project where I forecasted future sales trends using Python, visualized results in Power BI, and managed cleaned data using SQL. This project simulates a real-world business scenario of analyzing and predicting monthly revenue performance from raw sales data.

---

## 📦 Dataset

- Source: Internal company sales data (mock data)
- Format: CSV
- Size: ~2,000 rows
- Fields include:
- ORDER_ID	ORDER_DATE	REGION	CATEGORY	PRODUCT_NAME	UNIT_PRICE	QUANTITY	PAYMENT_METHOD	CUSTOMER_ID	CUSTOMER_SEGMENT	STORE_ID	DELIVERY_DAYS	TOTAL_PRICE	PROMISED_DELIVERY_DATE	ACTUAL_DELIVERY_DATE	DELIVERY_STATUS

---

## 🛠️ Tools & Technologies

| Tool         | Usage                              |
|--------------|-------------------------------------|
| **Python (Pandas, Matplotlib)** | Data Cleaning, EDA           |
| **SQL (MySQL)**                | Data Storage & Querying       |
| **Power BI**                   | Visualization & Dashboard     |
| **Jupyter Notebook**           | Workflow scripting            |

---

## 🔄 Project Workflow

1. **📥 Data Cleaning (Excel + Python):**
   - Removed duplicates & nulls
   - Created new columns ( `month`)
   - Standardized `region` and `product` names

2. **📊 Exploratory Data Analysis (Python):**
   - Monthly revenue trends
   - Top-performing products & regions
   - Top product Revenue
   - Outlier detection using Z-score

3. **🔁 Data Load to SQL:**
   - Cleaned dataset saved to MySQL using SQLAlchemy
   - Queries run for analysis & Power BI connection

4. **📉 Forecasting (Python):**
   - Visualized using Matplotlib line chart

5. **📈 Visualization (Power BI):**
   - Region-wise & Product-wise revenue dashboards
   - Forecast chart integrated
   - KPI cards for total revenue, average order size, top category

---

## 📌 Key Business Insights

- 💰 Highest revenue was generated from **[Top Region]**
- 📦 Most sold product: **[Top Product]**
- 📅 Sales peak in **[Top Month]**, lowest in **[Lowest Month]**
- 📈 Forecast suggests an upward trend for next 6 months
- 💳 **[Most common payment method]** dominates 60% of transactions

---

## 📚 What I Learned

- How to clean and structure raw data for analysis
- Handling date-based features (monthly trends)
- Creating dynamic visual dashboards using Power BI
- SQL view creation and Python-SQL integration
- Forecasting using basic time series trendlines

---
