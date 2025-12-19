CREATE DATABASE Final_Project_NTI;
USE Final_Project_NTI;

-- =======================================================
-- QUESTION 1: Which items cause a "High Sugar Spike"?
-- Objective: Show every single item flagged as 'Yes' for sugar spike, ranked by sugar content.
-- =======================================================
SELECT 
    [item], 
    [category], 
    [sugars], 
    [high_sugar_spike]
FROM 
    mcdonalds_cleaned_final
WHERE 
    [high_sugar_spike] = 'Yes'
ORDER BY 
    [sugars] DESC;


-- =======================================================
-- QUESTION 2: Rank the entire menu by Protein Efficiency (Protein per 100g).
-- Objective: See which items give the most protein for their weight (Best to Worst).
-- =======================================================
SELECT 
    [item], 
    [category], 
    [protein_100g], 
    [protein],
    [serving_weight_g]
FROM 
    mcdonalds_cleaned_final
ORDER BY 
    [protein_100g] DESC;


-- =======================================================
-- QUESTION 3: Average Sugars vs. Average Fiber per Category.
-- Objective: Compare all categories to see which are "Empty Calories" (High Sugar, Low Fiber).
-- =======================================================
SELECT 
    [category], 
    AVG([sugars]) AS avg_sugar, 
    AVG([dietary_fiber]) AS avg_fiber
FROM 
    mcdonalds_cleaned_final
GROUP BY 
    [category]
ORDER BY 
    avg_sugar DESC;


-- =======================================================
-- QUESTION 4: Calorie Density Analysis for Breakfast.
-- Objective: List all Breakfast items ordered by how "heavy" they are (calories per gram).
-- =======================================================
SELECT 
    [item], 
    [calorie_density], 
    [serving_weight_g],
    [calories]
FROM 
    mcdonalds_cleaned_final
WHERE 
    [category] = 'Breakfast'
ORDER BY 
    [calorie_density] DESC;


-- =======================================================
-- QUESTION 5: The "Hidden Heart Risk" List.
-- Objective: Find all items that have 0 Trans Fat but are still high in Cholesterol (> 100mg).
-- =======================================================
SELECT 
    [item], 
    [trans_fat], 
    [cholesterol]
FROM 
    mcdonalds_cleaned_final
WHERE 
    [trans_fat] = 0 AND [cholesterol] > 100
ORDER BY 
    [cholesterol] DESC;


-- =======================================================
-- QUESTION 6: How many nutrient-rich items exist? (High Vitamin A).
-- Objective: Count items that provide more than 50% of the Daily Value for Vitamin A.
-- =======================================================
SELECT 
    COUNT(*) AS high_vitamin_a_count
FROM 
    mcdonalds_cleaned_final
WHERE 
    [vitamin_a_pct_dv] > 50;


-- =======================================================
-- QUESTION 7: Cholesterol Levels by Category.
-- Objective: Rank all categories by their average cholesterol level.
-- =======================================================
SELECT 
    [category], 
    AVG([cholesterol]) AS avg_cholesterol
FROM 
    mcdonalds_cleaned_final
GROUP BY 
    [category]
ORDER BY 
    avg_cholesterol DESC;


-- =======================================================
-- QUESTION 8: The "Fatty Foods" Report.
-- Objective: List every item where Calories from Fat is greater than 300.
-- =======================================================
SELECT 
    [item], 
    [category], 
    [calories_from_fat], 
    [total_fat]
FROM 
    mcdonalds_cleaned_final
WHERE 
    [calories_from_fat] > 300
ORDER BY 
    [calories_from_fat] DESC;


-- =======================================================
-- QUESTION 9: Saltiest Items Ranking (Sodium % DV).
-- Objective: List the entire menu ordered by Sodium Daily Value percentage.
-- =======================================================
SELECT 
    [item], 
    [sodium_pct_dv], 
    [sodium]
FROM 
    mcdonalds_cleaned_final
ORDER BY 
    [sodium_pct_dv] DESC;


-- =======================================================
-- QUESTION 10: Full Menu Summary Statistics.
-- Objective: Get the grand total count and averages for the entire dataset in one view.
-- =======================================================
SELECT 
    COUNT(*) AS total_items,
    AVG([sugars]) AS global_avg_sugar,
    AVG([protein_100g]) AS global_avg_protein_density,
    MAX([calories]) AS max_calories_found
FROM 
    mcdonalds_cleaned_final;