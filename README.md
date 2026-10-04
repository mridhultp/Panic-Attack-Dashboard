# 🧠 Panic Attacks Data Analysis & Power BI Dashboard

## 📌 Project Overview
This project delivers an end-to-end data analysis pipeline designed to explore patterns, triggers, and symptoms associated with panic attacks. The workflow spans database creation in **Snowflake**, comprehensive data validation using **Snowflake SQL Notebooks**, advanced visual modeling and **DAX calculations in Power BI Desktop**, and cloud deployment to **Power BI Service**.

![Dashboard Overview](docs/images/powerbi_dashboard_overview.png)

---

## 🗄️ Database Architecture & Setup (Snowflake)
The data pipeline originates in **Snowflake** under the `PowerBIProject` database [1]. The raw dataset is ingested into the `Panic_Attack_Data` table, which tracks patient demographics, physiological metrics (e.g., heart rate), symptoms, medical history, lifestyle factors, and panic severity scores [1].

![Snowflake Database Setup](docs/images/snowflake_db_setup.png)

---

## 🔍 Data Quality & Exploratory SQL Analysis
Before building visualizations, extensive exploratory data analysis (EDA) and data cleansing queries were run in a **Snowflake SQL Notebook** [2]:

* **Primary Key Integrity**: Confirmed that the `ID` column contains zero null values and no duplicate records [2].
* **Data Hygiene**: Verified text columns (`GENDER`, `TRIGGER_REASON`, `MEDICAL_HISTORY`) for leading or trailing whitespace using `TRIM()` functions.
* **Cardinality & Distribution**: Audited unique values and record counts across demographics, triggers, and medical history classifications (including Anxiety, Depression, and PTSD) [2].

![Snowflake SQL Exploratory Queries](docs/images/snowflake_sql_notebook.png)

---

## 📊 Data Visualisation & DAX Modeling (Power BI)
The data was imported into **Power BI Desktop**, where data relationships were modeled and custom **DAX measures** were developed for deep diagnostic insights:

* **Symptom Analysis**: Visualised symptom prevalence across patients, evaluating rates of dizziness, trembling, sweating, shortness of breath, and chest pain [3].
* **Lifestyle & Risk Profiling**: Analyzed relationships between panic metrics and weekly alcohol consumption, sleep duration, and attack durations [4].
* **Demographic Segmentation**: Calculated average metrics for Sleep Hours, Panic Score, and Panic Attack Frequency (PAF) segmented across age groups (Adolescents vs. Adults) and specific triggers [5].

![Power BI Symptom Analysis](docs/images/powerbi_symptoms_analysis.png)

![Power BI Demographic & Trigger Trends](docs/images/powerbi_age_group_analysis.png)

---

## 🚀 Deployment (Power BI Service)
The completed report was published directly to **Power BI Service**, enabling cloud access, dynamic filtering via slicers (Gender, Trigger Reason, Panic Score), and interactive stakeholder exploration [3, 4].

![Power BI Service Report](docs/images/powerbi_service_report.png) 
