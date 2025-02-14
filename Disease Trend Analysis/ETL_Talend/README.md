📌 Overview

This folder contains ETL (Extract, Transform, Load) processes designed with Talend to manage and process healthcare data efficiently. These ETL jobs are responsible for extracting raw data, transforming it into a structured format, and loading it into the database.



## 🛠️ ETL Process
- `Importing Data (Included in Processing)/` – Data is imported directly in the Processing step before transformation begins, Sources: CSV, 	Handled using Talend Input Components (e.g., tFileInputDelimited, tDBInput).
  
- `Processing Data/` 
  •	Data cleaning, transformation, and enrichment.
	•	Operations: filtering, deduplication, type conversion, etc.
	•	Implemented with tMap, tFilterRow...etc.

- `Loading Data/` –
  •	Processed data is inserted into the target database.
	•	Handled using tDBOutput.

## Technologies Used
- Talend Open Studio
- SQLLite
- CSV

