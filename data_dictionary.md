# Data Dictionary

## Dataset: Perth Suburbs Complete Data

**File:** `perth_suburbs_complete_data.csv`  
**Records:** 36 suburbs  
**Fields:** 27  
**Date:** December 2024

---

## Field Definitions

| Field Name | Data Type | Description | Example |
|------------|-----------|-------------|---------|
| **suburb** | String | Suburb name | "Subiaco" |
| **postcode** | Integer | Australian postcode | 6008 |
| **zone** | String | Geographic zone classification | "Inner", "Middle", "Outer", "Coastal" |
| **distance_to_cbd_km** | Float | Distance from Perth CBD in kilometers | 3.5 |
| **median_house_price** | Integer | Current median house sale price (AUD) | 850000 |
| **median_house_price_prev_year** | Integer | Median house price 12 months ago | 787037 |
| **house_price_growth_12m** | Float | 12-month price growth percentage | 8.0 |
| **weekly_rent_house** | Integer | Average weekly rental price for houses | 652 |
| **rental_yield_house_pct** | Float | Annual rental return as % of property value | 4.0 |
| **median_unit_price** | Integer | Current median unit/apartment price | 552500 |
| **median_unit_price_prev_year** | Integer | Unit price 12 months ago | 511574 |
| **unit_price_growth_12m** | Float | 12-month unit price growth percentage | 8.0 |
| **weekly_rent_unit** | Integer | Average weekly rental for units | 461 |
| **rental_yield_unit_pct** | Float | Annual unit rental yield percentage | 5.0 |
| **sales_volume_12m** | Integer | Number of properties sold in past year | 194 |
| **days_on_market** | Integer | Average days property listed before sale | 27 |
| **vacancy_rate_pct** | Float | Rental vacancy rate percentage | 1.5 |
| **population** | Integer | Suburb population estimate | 15234 |
| **median_age** | Integer | Median age of residents | 36 |
| **median_household_income** | Integer | Median annual household income (AUD) | 75000 |
| **house_percentage** | Float | % of dwellings that are houses | 45.0 |
| **unit_percentage** | Float | % of dwellings that are units/apartments | 55.0 |
| **data_source** | String | Origin of data | "Synthetic (based on Perth market patterns)" |
| **data_date** | Date | Data collection/generation date | "2024-12-29" |
| **price_to_income_ratio** | Float | Median price divided by median income | 11.33 |
| **affordability_score** | Float | Calculated affordability metric (0-100) | 25.5 |
| **investment_score** | Float | Composite investment metric (0-10) | 7.8 |

---

## Calculated Metrics

### Investment Score
**Formula:**
```
investment_score = (house_price_growth_12m * 0.4) + 
                   (rental_yield_house_pct * 0.3) + 
                   ((100 - days_on_market) / 10 * 0.3)
```

**Weighting:**
- 40% - Price growth rate (capital appreciation potential)
- 30% - Rental yield (cash flow generation)
- 30% - Market liquidity (100 - days on market, normalized)

**Range:** 0-10 (higher is better)

### Affordability Score
**Formula:**
```
affordability_score = 100 - (price_to_income_ratio * 10)
```

**Interpretation:**
- > 30: Affordable
- 0-30: Moderate affordability
- < 0: Low affordability (overpriced relative to income)

---

## Data Quality Notes

- All monetary values in AUD
- Growth rates and yields are annualized percentages
- Synthetic data based on realistic Perth market patterns (2023-2024)
- Geographic coordinates added for mapping visualization
- No missing values in dataset
