# Data Analytics portfolio

# Project 1

**Title:** [Healthcare Exploratory Dashboard](https://github.com/Jumoke-Lucas/Olajumoke.github.io/blob/main/healthcare_prediction_data.xlsx)

**Tools Used:** Microsoft Excel (Pivot table, Power query editor, slicers, conditional formatting, text box)

**Project description:** Conducted a comprehensive exploratory analysis of a large scale healthcard dataset. This project features an interactive dashboard that allows users explore healthcard data across multiple dimensions.
The dashboard includes the following features:

Interactive slicers to filter by blood type, medical condition and gender. 

Heatmaps showing the correlation between medical conditions and clood type as well as admission type and test results. 

Dynamic charts updating automatically with filter selections.

Key analysis performed : 
1. Patient demographic analysis :
- Analysed age distribution for different medical conditions
- Identified the most common medical conditions
- Identified gender distribution for different medical conditions 
2. Clinical analysis :
- Investigated correlation between blood types and medical conditions
- Investigated correlation between admission type and test results
- Identified medications that are frequantly prescribed for different conditions
- Investigated the percentage of patients per normal, abnormal and inconclusive test results.
  
3. Hospital operations analysis:
- Identified hospitlas handling most urgent and emergency cases
- Identified doctores with the highest patient load

4. Billing analysis:
- Identified conditions that generate the highest billing amounts
- Compared billing across insurance providers

**Key findings:**
- No significant association was found between blood type and specific medical conditions based on Chi square analysis
- Certain hospitals showed higher concentrations of emergency and urgent cases suggesting specialist facilities
- No significant association was found between admission type and test results based on Chi square analysis
- Individuals 60+ are more likely to be admitted for different medical conditions due to old age

This analysis provides actionable insights into patient demographics, clinical outcomes and hospital operations.

**Dashboard Overview:**
![Healthcare](Healthcare.png)



# Project 2 

**Title:** SQL Data Definition, Query and manipulation language - Football players data 

**SQL Code:** [Football players data](https://github.com/Jumoke-Lucas/Olajumoke.github.io/blob/main/Football_data.sql)

**SQL Skills Used:** 
- Data Retrieval (SELECT): Queried and extracted specific player information including name, age, position, college, team, height, and weight from the database
- Data Aggregation (SUM, COUNT, AVG, MAX, MIN): Calculated average heights per position, counted players by experience level, found tallest/shortest players per college, and computed position-level weight averages
- Data Filtering (WHERE, BETWEEN, IN, AND, LIKE): Applied filters to isolate players by team, position, college, age, experience level, weight thresholds, and height range
- Data Cleaning: Removed blank columns, replaced NULL values, ensured absence of duplicates
- Data Source Specification (FROM) : Used in sourcing data from table within the database
- Window Functions (OVER, PARTITION BY, ROW_NUMBER, RANK, AVG): Ranked players by weight and age within partitions, computed rolling team averages for height and weight comparisons
- CTEs (Common Table Expressions): Used to simplify complex data. Used WITH clauses to stage ranked, filtered, and aggregated subsets before final selection
- String Parsing (LEFT, RIGHT, LEN, CHARINDEX, TRY_CAST): Converted height stored as feet-inches text format into numeric inches for mathematical calculations
- ALTER TABLE: Added a permanent computed (Height_inches) column to avoid repeated height conversion syntax

**Project Description:** 
This project involved an end-to-end SQL analysis of football players dataset using SQL Server Management Studio (SSMS). The analysis began with removing unnecessary columns, handling NULL values, and duplicate checks to ensure data intergrity. Analytical queries were then written to explore player attributes across teams, positions, colleges, and experience levels. Advanced techniques including window functions, CTEs, and string parsing were applied to answer complex business questions such as identifying the heaviest player per position, finding players above their team’s average height, and calculating position distribution percentages per team. A computed column (Height_inches) was permanently added to the table to avoid repeated height conversion across queries.


**Technology used:** SQL server(SSMS)



# Project 3 

**Title:** [HR Analytics Dashboard for Workforce, Attrition & Performance Insights](https://github.com/Jumoke-Lucas/Olajumoke.github.io/blob/main/HR%20attrition.pbix)

**Tools Used:** Power BI – Data modelling, DAX calculations, interactive dashboards

Excel – Data cleaning 

Power Query – ETL transformations

DAX – Measures for KPIs, attrition rate, income metric. Calculated columns for age groups and satisfaction scoring

Data Visualization Techniques – Bar charts, donut charts, treemaps, scatter plots, line charts, gauge.

**Project Description:** This project involved developing a comprehensive HR Analytics Dashboard to help leadership understand workforce demographics, attrition patterns, employee satisfaction, income distribution, and career progression. I built a 6‑page interactive Power BI report that provides actionable insights into workforce demographics, retention risks, and performance indicators across departments, job roles, age groups, and job levels.

**Key findings:**
- The company employs 1.47K staff with Research & Development being the largest department.
- Average employee age is 37, and average monthly income is 6.50K.
- Male employees (882) outnumber female employees (588).
- Attrition rate is 16.12% with 237 employees leaving and 1.23K active employees remaining.
- 72 employees (4.9%) are due for promotion, with long gaps since last promotion in several job roles.
- Employees between the ages of 18–35 show higher attrition.
- Overtime workers have significantly higher attrition rates
- Job satisfaction varies widely, with some roles scoring below the overall average of 2.73/4.00.
- Income increases consistently with job level, education, and years of experience.

**Dashboard Overview:**
![hr1](HR1.png)
![hr2](HR2.png)
![hr3](HR3.png)
![hr4](HR4.png)
![hr5](HR5.png)
![hr6](HR6.png)


# Project 4 

**Title:** SQL Data manipulation and data query language - Workplace safety data 

**SQL Code:** [Workplace safety data](https://github.com/Jumoke-Lucas/Olajumoke.github.io/blob/main/Workplace_safety_data.sql)

**SQL Skills Used:** 
Data Retrieval (SELECT): Retrieved incident counts, cost summaries, days lost, gender distribution, age‑group patterns, shift‑based incident counts, and monthly/yearly trends using multiple SELECT statements.

Data Aggregation (SUM, COUNT, AVG, MAX):Calculated total incident cost per department, total days lost per incident type, maximum days lost per incident type, average incident cost per injury location, total incidents per month/year, and highest‑cost incident type.

Data Cleaning:
Replaced NULL values in Incident_Cost with 0. Checked for duplicates across all columns to ensure dataset integrity for all analysis.

Grouping & Categorization (GROUP BY):Grouped data by Plant, Department, Incident_Type, Shift, Age_Group, Gender, Month and Year to uncover patterns and trends.

Sorting & Ranking (ORDER BY): Ordered results by incident counts, total days lost, total cost and highest‑cost incidents to identify top contributors and trends.

Limiting Results (TOP):Used TOP 1 to identify the plant with the highest number of Near Miss incidents and the incident type with the highest cost.

Rounding & Formatting (ROUND): Rounded average incident cost values for cleaner reporting.

**Project Description:** This project an SQL analysis of workplace safety incidents across multiple plants, departments, and shifts. Using SQL, the dataset was explored to uncover patterns in incident frequency, cost, severity, and demographic impact. The goal was to help safety managers identify high‑risk areas, reduce incident rates, and improve workplace safety policies.

**Technology used:** SQL server(SSMS)


# Project 5

**Title:** [Cardiac surgery mortality dashboard](https://github.com/Jumoke-Lucas/Jumoke.github.io/blob/main/Cardiac%20surgery-%20Analysis.xlsx)

**Tools Used:** Microsoft Excel (Pivot table, Power query editor, slicers, text box)

**Project description:**  Analysed a full year of cardiac surgery procedures, combining clinical risk scores, patient outcomes, surgeon performance, and operational efficiency metrics. The dataset includes predicted mortality from two statistical models, actual mortality outcomes, patient demographics, procedure types, and time from admission and surgery.

The dashboard includes the following features:

Interactive slicers to filter by priority, Operation type and surgeon name. 

Dynamic charts updating automatically with filter selections.

Key analysis performed : 
- Operations by Surgeon & Operation Type : Counted total procedures per surgeon, grouped by operation type to identify specialisation patterns. Highlighted surgeons with high volumes in CABG, Valve, or Aorta surgery.
- Actual vs Predicted Mortality : Compared actual mortality to predicted risk from both models. Calculated mortality rate per surgeon and identified surgeons with outcomes better or worse than predicted.
- Time Between Admission and Procedure : Converted Excel serial dates into datetime format. Calculated time difference in hours.


**Key findings:**
- CABG and Valve surgeries were the most common operation types.
- Aorta surgery and Major cardiac procedures were performed by a smaller subset of surgeons.
- Actual mortality was generally lower than predicted for most surgeons.
- Model 1 and Model 2 predictions were directionally consistent but differed in magnitude.
- Elective cases had the longest waiting times, as expected.
- Surgeons with higher caseloads tended to have more stable mortality performance.

The goal of the analysis was to evaluate surgeon performance, compare predicted vs actual mortality, and understand how operational factors such as procedure priority affects time to treatment.
  
**Dashboard Overview:**
![Cardiac surgery](cardiac.png)


# Project 6

**Title:** [Superstore sales data](https://github.com/Jumoke-Lucas/Jumoke.github.io/blob/main/Superstore%20data%20dashboard.pbix)

**Tools Used:** Power BI – Data modelling, DAX calculations, interactive dashboards

Power Query – ETL transformations

DAX – Measures for KPIs, attrition rate, income metric. Calculated columns for agre groups and satisfaction scoring

Data Visualization Techniques – KPI cards, Bar charts, pie charts, slicers, liner chart.

**Project Description:** This project involved developing an interactive Power BI dashboard to analyse sales, profit, shipping behaviour and operational performance for a retail superstore. The dashboard visualises key business metrics such as total sales, total profit, number of orders and product count. It also breaks down performance across product categories, shipping modes, order priorities, and geographic regions. Time‑series analysis was incorporated to track shipping cost trends over multiple years, helping the business understand cost fluctuations and potential supply chain issues.

**Key findings:**
- The business processed 6K orders across 1K products, generating 8.95M in total sales and 1.31M in total profit.
- Profit varies across product categories and regions.
- Technology is the most profitable category, contributing the largest share of total profit.
- Furniture shows lower profitability, indicating higher costs or discounting.
- Average shipping cost varies by category, with Furniture typically incurring higher shipping expenses.
- The West and East regions generate the highest total sales.
- Profit distribution shows strong performance in the West, while the South region contributes the least profit.
- Regular Air is the most commonly used shipping mode, followed by Delivery Truck and Express Air.
- Shipping cost trends fluctuate over the years, indicating potential changes in logistics pricing or supplier contracts.

This report supports data‑driven decision‑making by highlighting high‑performing regions, profitable product categories, and operational patterns that influence customer experience and profitability.

**Dashboard Overview:**
![superstore](Superstoore.jpeg)


# Project 7

**Title:** SQL Data manipulation language - Sales data 

**SQL Code:** [Sales data](https://github.com/Jumoke-Lucas/Jumoke.github.io/blob/main/Sales_data.sql)

**SQL Skills Used:** 
Data Retrieval (SELECT): Extracted salesperson, cutsomer and order information across multiple tables

Data filtering (WHERE, BETWEEN, AND, OR, IS NOT NULL, <>): Applied conditions to filter records 

Data source specification (FROM, JOINS): Used in sourcing records from tables within the database 

Inner join, Left join, Right join, Full outer join, Cross join 

Sorting & Ranking (ORDER BY): Ordered results by names

**Project Description:** This project involves writing and executing a comprehensive set of SQL join queries against a database containing 3 tables: Salesman, Customer and Order. The analysis explored relationships  between salespeople and their customers. 

**Technology used:** SQL server(SSMS)


# Project 8

**Title:** [Vrinda store data](https://github.com/Jumoke-Lucas/Jumoke.github.io/blob/main/Vrinda%20store%20data.xlsx)

**Tools Used:** Microsoft Excel (Pivot table, Power query editor, slicers, text box)

**Project description:** Conducted a sales data analysis for Vrinda store, an online retail business sellinhg across multiple ecommerce platforms. The project involves analysisng sales performance and order fulfilment using microsoft excel.  
The dashboard includes the following features:

Interactive slicers to filter by month, channel and category. 

Dynamic charts (Column charts, Pie charts, Bar charts) updating automatically with slicer selection

Key analysis performed : 

- Tracked total orders by each month 
- Tracked total sales by each month 
- identified peak and low sales period 
- Analysed sales split between female and male customers
- Ranked channels by revenue contribution
- Monitored delivery rate success
- Tracked cancellation, refund and return rates
- Identified top 10 satates with highest sales
- Identified most popula outfit type by order volume
- Identified top selling sizes across all products
   
**Key findings:**
- Sales peaked in early months of the year with gradual decline towards the end of the year
- Female customers accounted for  the majority of sales significantly more than male customers, suggesting female oriented product range 
- Amazon was the highest performing sales channel by total order amount
- Set and Kurta are the top most highest ordered outfit types
- M and L sizes were the most populat sizes ordered
- Cancellation, refund and return rates were minimal indicating good fulfilment efficiency
  
**Dashboard Overview:**
![Vrinda](Vrinda.jpeg)

