📌 Overview

This folder contains ETL (Extract, Transform, Load) processes designed with Talend to manage and process healthcare data efficiently. These ETL jobs are responsible for extracting raw data, transforming it into a structured format, and loading it into the database.

🛠️ ETL Process
	1.	Importing Data (Included in Processing)
	Data is imported directly in the Processing step before transformation begins.
	Sources: CSV, JSON, or database tables.
	Handled using Talend Input Components (e.g., tFileInputDelimited, tDBInput).
	
 	2.	Processing Data
	Data cleaning, transformation, and enrichment.
	Operations: filtering, deduplication, type conversion, etc.
	Implemented with tMap, tFilterRow, and tNormalize.
	
 	3.	Loading Data
	Processed data is inserted into the target database.
	Handled using tDBOutput.

📷 Screenshots

ETL workflow screenshots will be included to illustrate the process in Talend.

🚀 Technologies Used
	•	Talend Open Studio – For ETL development
	•	SQLLite – Destination for transformed data
	•	CSV – Source data formats
