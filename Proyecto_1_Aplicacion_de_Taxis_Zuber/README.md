# DataScience_Projects_DomenicaRivera

Zuber Taxi Data Analysis Project

Project Overview

This project analyzes taxi trip data in Chicago to identify patterns in ride distribution, company performance, and the impact of weather conditions on trip duration.

The workflow integrates web scraping, SQL, and Python to build an end-to-end data analysis pipeline, from raw data collection to statistical hypothesis testing.

Tools & Technologies

Python (pandas, matplotlib, scipy)
SQL
BeautifulSoup (web scraping)
Jupyter Notebook
Data Sources

The analysis is based on three main datasets:

Companies dataset: 64 taxi companies and their total number of trips
Neighborhoods dataset: 94 Chicago neighborhoods with average trip drop-offs
Trips dataset: 1,068 rides from the Loop to O'Hare International Airport, including:
Start timestamp
Weather conditions
Trip duration (seconds)

Additionally, weather data was collected via web scraping and integrated into the analysis.

Project Workflow

1. Data Collection

Weather data was scraped using Python and BeautifulSoup, extracting historical weather conditions and structuring them into a dataset for analysis.

2. Data Processing (SQL)

SQL was used extensively to transform and prepare the data:

Aggregated trips by company using COUNT and GROUP BY
Filtered trips by date ranges and company names (e.g., Yellow and Blue taxis)
Grouped companies into categories using CASE
Identified key neighborhoods such as Loop and O'Hare
Classified weather conditions into:
Good (no rain/storm)
Bad (rain or storm detected)
Created a final dataset by joining trip and weather data and filtering:
Route: Loop → O'Hare
Day: Saturdays

3. Exploratory Data Analysis (Python)

Verified data types and checked for missing values (none found)
Converted start_ts to datetime format
Identified top 15 taxi companies by number of trips
Identified top 10 neighborhoods by average trip drop-offs
Key Findings:
Flash Cab dominates the market with 19,558 trips, exceeding the second company by 8,136 trips
The taxi market shows strong concentration, with a few companies leading
Loop is the top destination with 10,727.47 average trips, followed by River North (9,523.67)
Central Chicago neighborhoods dominate taxi demand

4. Hypothesis Testing

Objective:

To determine whether weather conditions affect the duration of taxi trips from the Loop to O'Hare Airport on Saturdays.

Hypotheses:

H₀: The average trip duration is the same in rainy and non-rainy conditions
H₁: The average trip duration is different

Method:

Two-sample t-test (Welch’s t-test)
Significance level: α = 0.05

Results:

p-value = 6.74 × 10⁻¹²
The null hypothesis was rejected

Conclusion:

There is strong statistical evidence that weather conditions significantly impact trip duration, with adverse weather increasing travel time.

Key Insights

The taxi market in Chicago is highly concentrated
A small number of companies dominate total trip volume
Central neighborhoods account for the majority of trips
Weather conditions have a measurable and significant impact on travel time

📂 Project Structure
├── data/ # Datasets
├── src/ # Web scraping scripts
├── sql/ # SQL queries for data processing
├── notebooks/ # Data analysis and visualization
└── README.md

Conclusion

This project demonstrates a complete data analysis workflow, integrating data collection, transformation, and statistical analysis to generate actionable insights. It highlights how external factors such as weather can influence urban mobility and travel efficiency.
