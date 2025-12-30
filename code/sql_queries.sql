-- =====================================================
-- PERTH SUBURB INVESTMENT ANALYSIS - SQL QUERIES
-- =====================================================
-- Author: Flavio Cotelacci
-- Date: December 2024
-- Purpose: Analyze Perth suburbs for investment potential
-- =====================================================

-- QUERY 1: Top 10 Investment Suburbs
-- Shows the highest-scoring suburbs by investment potential
SELECT 
    suburb,
    zone,
    median_house_price,
    house_price_growth_12m,
    rental_yield_house_pct,
    investment_score,
    affordability_score
FROM suburbs
ORDER BY investment_score DESC
LIMIT 10;

-- QUERY 2: Best Value Suburbs (Under $600k, Growth >8%)
-- Identifies affordable suburbs with strong growth
SELECT 
    suburb,
    median_house_price,
    house_price_growth_12m,
    rental_yield_house_pct,
    distance_to_cbd_km,
    days_on_market
FROM suburbs
WHERE median_house_price < 600000
  AND house_price_growth_12m > 8
ORDER BY investment_score DESC;

-- QUERY 3: Zone Comparison Analysis
-- Compares average performance across Perth zones
SELECT 
    zone,
    COUNT(*) as suburb_count,
    ROUND(AVG(median_house_price), 0) as avg_house_price,
    ROUND(AVG(house_price_growth_12m), 2) as avg_growth_rate,
    ROUND(AVG(rental_yield_house_pct), 2) as avg_rental_yield,
    ROUND(AVG(days_on_market), 0) as avg_days_on_market,
    ROUND(AVG(investment_score), 1) as avg_investment_score
FROM suburbs
GROUP BY zone
ORDER BY avg_investment_score DESC;

-- QUERY 4: High Yield + Fast Selling Properties
-- Finds suburbs with strong rental returns and quick sales
SELECT 
    suburb,
    zone,
    median_house_price,
    rental_yield_house_pct,
    days_on_market,
    sales_volume_12m
FROM suburbs
WHERE rental_yield_house_pct > 4.5
  AND days_on_market < 35
ORDER BY rental_yield_house_pct DESC
LIMIT 10;

-- QUERY 5: Affordability vs Investment Matrix
-- Categorizes suburbs based on affordability and growth potential
SELECT 
    suburb,
    median_house_price,
    median_household_income,
    price_to_income_ratio,
    affordability_score,
    investment_score,
    CASE 
        WHEN affordability_score > 30 AND investment_score > 7 THEN 'Sweet Spot'
        WHEN affordability_score > 30 THEN 'Affordable'
        WHEN investment_score > 7 THEN 'High Growth'
        ELSE 'Standard'
    END as category
FROM suburbs
ORDER BY investment_score DESC;
