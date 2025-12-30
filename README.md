# Perth Suburb Investment Hotspot Analysis

**A Business Intelligence project identifying high-growth, high-yield property investment opportunities in Perth, Western Australia.**

[![Tableau Dashboard](https://img.shields.io/badge/Tableau-Public-blue)](https://public.tableau.com/views/Perth-Suburb-Investment-Analysis/PerthInvestmentDashboard)
[![Python](https://img.shields.io/badge/Python-3.12-green)](https://www.python.org/)
[![SQL](https://img.shields.io/badge/SQL-SQLite-orange)](https://www.sqlite.org/)

---

## 📊 Interactive Dashboard

**[View Live Dashboard on Tableau Public →](https://public.tableau.com/views/Perth-Suburb-Investment-Analysis/PerthInvestmentDashboard?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

Dashboard Preview 

<img width="1471" height="799" alt="Perth_Investment_Dashboard" src="https://github.com/user-attachments/assets/ff101066-5a5c-4e0c-8a33-2f39610199e1" />


---

## 🎯 Business Problem

Property investors and homebuyers struggle to identify Perth suburbs that offer:
- Strong capital growth potential
- High rental yields
- Affordable entry points
- Low vacancy risk

This project analyzes **36 Perth suburbs** across multiple investment metrics to identify optimal opportunities.

---

## 🔑 Key Findings

### 💡 Top Investment Insights:

1. **Outer suburbs dominate top opportunities** (8 of top 10)
   - Average investment score: 8.2/10
   - Average growth rate: 12.1%
   - Average rental yield: 5.0%

2. **Maddington is the #1 investment suburb**
   - Investment score: 9.0/10
   - 12-month growth: 14%
   - Rental yield: 4.9%
   - Median price: $410,000 (highly affordable)

3. **"Sweet Spot" suburbs** (affordable + high growth):
   - Maddington, Success, Gosnells, Huntingdale, Cannington
   - All under $550k with 10%+ growth

4. **Inner suburbs show premium pricing but slower growth**
   - Average price: $945,000
   - Average growth: 7.2%
   - Best for capital preservation, not growth

5. **Best value: Under $600k suburbs averaging 11% annual growth**

---

## 🛠️ Tech Stack & Skills Demonstrated

### Tools Used:
- **Python** - Data generation and processing
- **SQL (SQLite)** - Data analysis and querying
- **Tableau** - Interactive dashboard development
- **Google Colab** - Development environment
- **Git/GitHub** - Version control and documentation

### Skills Showcased:
- ✅ Data extraction and cleaning
- ✅ SQL query writing and optimization
- ✅ Calculated field creation
- ✅ Data visualization best practices
- ✅ Interactive dashboard design
- ✅ Business insight generation
- ✅ Geospatial analysis
- ✅ Metric development (Investment Score algorithm)

---

## 📂 Project Structure
```
Perth-Investment-Analysis/
├── data/                    # Raw and processed datasets
├── code/                    # Python notebooks and SQL queries
├── tableau/                 # Tableau workbook
├── images/                  # Dashboard screenshots
└── documentation/           # Methodology and findings
```

---

## 📊 Data Sources

**Primary Dataset:** Synthetic data based on Perth real estate market patterns (2024)
- 36 suburbs analyzed
- 27 metrics per suburb
- Data reflects realistic market conditions based on:
  - ABS Census data trends
  - REIWA market reports
  - Domain property data patterns

**Metrics Included:**
- Median house/unit prices
- 12-month price growth
- Rental yields
- Sales volumes
- Days on market
- Vacancy rates
- Demographics (income, age, population)
- Distance to CBD

---

## 🔍 Methodology

### 1. Data Collection & Generation
- Created realistic Perth suburb dataset using Python
- Based on actual market patterns and relationships
- Added geographic coordinates for mapping

### 2. SQL Analysis
Developed 5 key analytical queries:
- Top 10 investment suburbs
- Best value opportunities (under $600k)
- Zone comparison analysis
- High yield + fast selling properties
- Affordability vs investment matrix

### 3. Investment Score Algorithm
Created composite score (0-10) based on:
- **40% weight** - Price growth rate
- **30% weight** - Rental yield
- **30% weight** - Market liquidity (100 - days on market)

### 4. Visualization & Dashboard
- Interactive Tableau dashboard with 3 main views
- Geographic map with color-coded investment scores
- Top 10 rankings with zone filtering
- Zone comparison metrics
- Dynamic filters for price range, zone, and investment score

---

## 📈 Dashboard Features

### Interactive Elements:
- **Zone Filter** - Focus on specific Perth regions
- **Price Range Filter** - Target budget-appropriate suburbs
- **Investment Score Slider** - Show only high-performing areas
- **Top N Selector** - Adjust number of suburbs displayed

### Visualizations:
1. **Geographic Heat Map** - Investment scores by location
2. **Top 10 Rankings** - Best suburbs with detailed metrics
3. **Zone Comparison** - Performance across Perth regions

---

## 💼 Business Value

This analysis helps:
- **Property Investors** - Identify high-ROI opportunities
- **First Home Buyers** - Find affordable, growth-potential suburbs
- **Real Estate Agents** - Data-driven suburb recommendations
- **Property Developers** - Target emerging markets
- **Financial Advisors** - Support client investment decisions

**Potential Impact:** 
- Save investors 20+ hours of manual research
- Identify undervalued suburbs 6-12 months before market peaks
- Reduce investment risk through data-driven decisions

---

## 🚀 How to Use This Repository

### View the Dashboard:
1. **[Open Tableau Public Dashboard](https://public.tableau.com/views/Perth-Suburb-Investment-Analysis/PerthInvestmentDashboard)**
2. Use filters to explore suburbs by zone, price, or score
3. Hover over suburbs for detailed metrics

### Reproduce the Analysis:
1. Clone this repository
2. Open notebooks in `code/` folder
3. Run `01_data_generation.ipynb` to create dataset
4. Run `02_sql_analysis.ipynb` to execute queries
5. Open `Perth_Investment_Analysis.twbx` in Tableau

---

## 📝 Key SQL Queries

### Top 10 Investment Suburbs:
```sql
SELECT 
    suburb,
    zone,
    median_house_price,
    house_price_growth_12m,
    rental_yield_house_pct,
    investment_score
FROM suburbs
ORDER BY investment_score DESC
LIMIT 10;
```

**[View all SQL queries →](sql_queries.sql)**

---

## 🎓 Learning Outcomes

Through this project, I developed:
- Advanced SQL querying skills (aggregations, filtering, sorting)
- Tableau dashboard design expertise
- Geospatial data visualization
- Business metric development
- Data storytelling and insight generation
- Professional documentation practices

---

## 📧 Contact

**Flavio Cotellacci**  
Business Intelligence (BI) | Real Estate Management
📧 [flaviocoltellacci@pm.me]
💼 [LinkedIn](www.linkedin.com/in/flaviocoltellacci)

---

## 📄 License

This project is open source and available for educational purposes.

---

**⭐ If you found this project useful, please star the repository!**
