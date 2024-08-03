EduDataFlow
Overview
EduDataFlow is a comprehensive data pipeline project designed to manage, transform, and analyze educational data. The project leverages dbt for data transformations and Dagster for orchestrating data workflows. The primary data sources include information on students, enrollments, and courses, which are processed to create meaningful insights and reports.

Features
Data Transformations: Efficient SQL transformations using dbt.
Staging Area: Raw data is cleaned and organized in a staging layer.
Mart Area: Data is aggregated and prepared for analysis in the mart layer.
Data Quality Checks: Automated tests to ensure the accuracy and reliability of data.
Orchestration: Dagster is used to manage, schedule, and monitor data workflows.
Data Sources
Students: Information about students, including personal details and academic records.
Enrollments: Data on student enrollments in various courses and programs.
Courses: Details of courses offered, including course descriptions, schedules, and instructors.
Transformations
Staging Area
students_staging: Clean and organize raw student data.
enrollments_staging: Prepare and structure enrollment data.
courses_staging: Process and format course data.
Mart Area
students_mart: Aggregated and analyzed student data for reporting.
enrollments_mart: Aggregated enrollment data for insights.
courses_mart: Detailed and summary data on courses for analysis.
Orchestration with Dagster
Dagster Pipelines: Manage and schedule dbt runs for each stage of the data pipeline.
Monitoring: Real-time monitoring and alerts for data pipeline status.
Usage
Clone the repository.
bash
Copy code
git clone https://github.com/yourusername/EduDataFlow.git
Install dependencies.
bash
Copy code
cd EduDataFlow
pip install -r requirements.txt
Configure your database connection in profiles.yml.
Run dbt transformations.
bash
Copy code
dbt run
Schedule and monitor workflows using Dagster.
bash
Copy code
dagit -f path_to_your_dagster_pipeline.py
License
This project is licensed under the MIT License.
