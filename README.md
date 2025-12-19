# 🍔 Beyond the Bun: McDonald's Nutritional Analysis

![Python](https://img.shields.io/badge/Python-3.9-blue?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-MySQL%20%7C%20PostgreSQL-orange?logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Desktop-yellow?logo=powerbi&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-green)

## 📌 Project Overview
**Beyond the Bun** is a comprehensive data analysis project that audits the nutritional value of the McDonald's menu. Moving beyond simple calorie counting, this project utilizes a full-stack data pipeline (Python, SQL, Power BI) to uncover hidden health risks, protein-efficient choices, and sugar traps.

The goal was to provide data-driven recommendations for three distinct user groups: **Heart-Conscious Consumers**, **Muscle Builders**, and **Sugar Watchers**.

---

## 📂 Repository Contents

| Folder | File | Description |
| :--- | :--- | :--- |
| `python/` | [Final_Project_NTI.ipynb](python/Final_Project_NTI.ipynb) | **Data Cleaning:** outlier detection (IQR) and pre-processing using Pandas. |
| `sql/` | [SQLQuery1.sql](sql/SQLQuery1.sql) | **Analysis:** Advanced queries for segmentation, ranking, and identifying "hidden risks." |
| `data/` | [mcdonalds_cleaned_final.csv](data/mcdonalds_cleaned_final.csv) | **Dataset:** The cleaned and processed dataset used for analysis. |
| `reports/` | [Dashboard & Report.pdf](reports/Dashboard%20&%20Report.pdf) | **Dashboard:** High-quality export of the interactive Power BI views. |
| `reports/` | [Data-Driven Nutritional Analysis.pptx](reports/Data-Driven%20Nutritional%20Analysis.pptx) | **Presentation:** The final slide deck summarizing the project findings. |

---

## 🛠️ Tech Stack & Workflow

1.  **Python (Pandas):** * Loaded raw data and handled missing values.
    * Applied **IQR (Interquartile Range)** methodology to detect and handle extreme calorie outliers.
2.  **SQL (T-SQL):**
    * Imported flat file data.
    * Performed complex filtering (e.g., `WHERE Trans_Fat = 0 AND Cholesterol > 100`).
    * Created calculated metrics for "Protein Density."
3.  **Power BI:**
    * Built an interactive dashboard with dynamic slicers.
    * Visualized distributions using Histograms and Scatter Plots.

---

## 💡 Key Insights

### 1. ⚠️ The "Hidden Heart Risk"
**Myth:** "0g Trans Fat" means heart-healthy.  
**Reality:** We identified multiple items (like the *Big Breakfast with Hotcakes*) that claim **0g Trans Fat** but contain **>500mg of Cholesterol**, exceeding the daily limit in a single meal.

### 2. 💪 The "Fitness Choice"
**Analysis:** By calculating `Protein per 100g`, we found that the biggest burgers are "calorie expensive."  
**Winner:** The **Egg White Delight** and **Grilled Chicken Sandwich** offer the highest protein efficiency for muscle building.

### 3. 🚨 The "Sugar Spike"
**Finding:** Liquid calories are the most dangerous. A single *Large Chocolate Shake* contains **120g of sugar**—more than three cans of soda combined.

---

## 📊 Dashboard Preview


> **Executive Summary:** A high-level view of menu composition and caloric density.  
<img width="885" height="495" alt="DashBoard" src="https://github.com/user-attachments/assets/1cf20d77-ad38-4038-8924-39a1882aa2d9" />


---

## 🧠 Lessons Learned
* **End-to-End Pipeline:** Learned how to connect Python cleaning, SQL logic, and Power BI storytelling into one cohesive system.
* **Handling Flat Files:** Solved challenges related to importing CSVs into SQL and casting data types for aggregation.
* **Business Acumen:** Shifted focus from simply reporting numbers to finding actionable "Insights" that solve real-world problems.

---

## 📬 Contact
* **Author:** Amr Khaled Mohamed
* **LinkedIn:** www.linkedin.com/in/amr-khaled-ak
* **Email:** amr6781778@gmail.com

> *"The goal is to turn data into information, and information into insight."* – Carly Fiorina
