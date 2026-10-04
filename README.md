# 🧠 Panic Attacks Data Analysis & Power BI Dashboard

## 📌 Project Overview
This project delivers an end-to-end data analysis pipeline designed to explore patterns, triggers, and symptoms associated with panic attacks. The workflow spans database creation in **Snowflake**, comprehensive data validation using **Snowflake SQL Notebooks**, advanced visual modeling and **DAX calculations in Power BI Desktop**, and cloud deployment to **Power BI Service**.


---

## 🗄️ Database Architecture & Setup (Snowflake)
The data pipeline originates in **Snowflake** under the `PowerBIProject` database [1]. The raw dataset is ingested into the `Panic_Attack_Data` table, which tracks patient demographics, physiological metrics (e.g., heart rate), symptoms, medical history, lifestyle factors, and panic severity scores [1].


---

## 🔍 Data Quality & Exploratory SQL Analysis
Before building visualizations, extensive exploratory data analysis (EDA) and data cleansing queries were run in a **Snowflake SQL Notebook** [2]:

* **Primary Key Integrity**: Confirmed that the `ID` column contains zero null values and no duplicate records [2].
* **Data Hygiene**: Verified text columns (`GENDER`, `TRIGGER_REASON`, `MEDICAL_HISTORY`) for leading or trailing whitespace using `TRIM()` functions.
* **Cardinality & Distribution**: Audited unique values and record counts across demographics, triggers, and medical history classifications (including Anxiety, Depression, and PTSD) [2].

<img width="1897" height="932" alt="Snowflake_DB_Table_query" src="https://github.com/user-attachments/assets/9edd8a50-8ed6-4ca9-8f99-0b993c3df4d3" />


---

## 📊 Data Visualisation & DAX Modeling (Power BI)
The data was imported into **Power BI Desktop**, where data relationships were modeled and custom **DAX measures** were developed for deep diagnostic insights:

* **Symptom Analysis**: Visualised symptom prevalence across patients, evaluating rates of dizziness, trembling, sweating, shortness of breath, and chest pain [3].
* **Lifestyle & Risk Profiling**: Analyzed relationships between panic metrics and weekly alcohol consumption, sleep duration, and attack durations [4].
* **Demographic Segmentation**: Calculated average metrics for Sleep Hours, Panic Score, and Panic Attack Frequency (PAF) segmented across age groups (Adolescents vs. Adults) and specific triggers [5].


<img width="1907" height="975" alt="Page 2" src="https://github.com/user-attachments/assets/dea70039-ba44-43a2-9273-5d89915b1044" />

<img width="1903" height="867" alt="Page 3" src="https://github.com/user-attachments/assets/aa2f053a-59af-4db6-a274-019525efe764" />

<img width="1918" height="916" alt="Page4" src="https://github.com/user-attachments/assets/aa474d12-1e65-4e1f-878d-e068e251df52" />


---

## 🚀 Deployment (Power BI Service)
The completed report was published directly to **Power BI Service**, enabling cloud access, dynamic filtering via slicers (Gender, Trigger Reason, Panic Score), and interactive stakeholder exploration [3, 4].

https://app.powerbi.com/links/VPOYhmzKno?ctid=21a629b4-4c4b-450c-a3a8-69d7921bf6c9&pbi_source=linkShare

