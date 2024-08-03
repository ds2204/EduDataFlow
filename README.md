# EduDataFlow

## Overview

EduDataFlow is a comprehensive data pipeline project designed to manage, transform, and analyze educational data. The project leverages dbt for data transformations and Dagster for orchestrating data workflows. The primary data sources include information on students, enrollments, and courses, which are processed to create meaningful insights and reports.

## Features

- **Data Transformations:** Efficient SQL transformations using dbt.
- **Staging Area:** Raw data is cleaned and organized in a staging layer.
- **Mart Area:** Data is aggregated and prepared for analysis in the mart layer.
- **Data Quality Checks:** Automated tests to ensure the accuracy and reliability of data.
- **Orchestration:** Dagster is used to manage, schedule, and monitor data workflows.

## Data Sources

- **Students:** Information about students, including personal details and academic records.
- **Enrollments:** Data on student enrollments in various courses and programs.
- **Courses:** Details of courses offered, including course descriptions, schedules, and instructors.

## Transformations

### Staging Area

- **students_staging:** Clean and organize raw student data.
- **enrollments_staging:** Prepare and structure enrollment data.
- **courses_staging:** Process and format course data.

### Mart Area

- **students_mart:** Aggregated and analyzed student data for reporting.
- **enrollments_mart:** Aggregated enrollment data for insights.
- **courses_mart:** Detailed and summary data on courses for analysis.

## Orchestration with Dagster

- **Dagster Pipelines:** Manage and schedule dbt runs for each stage of the data pipeline.
- **Monitoring:** Real-time monitoring and alerts for data pipeline status.

## Usage

1. **Clone the repository:**

    ```sh
    git clone https://github.com/yourusername/dbt_project.git
    cd dbt_project
    ```

2. **Install dbt and the required adapter:**

    ```sh
    pip install dbt==1.8.4
    pip install dbt-snowflake==1.8.3
    ```

3. **Install Dagster:**

    ```sh
    pip install dagster dagit dagster-dbt
    ```

4. **Set up your `profiles.yml`:**

    Create or update your `profiles.yml` file to include your Snowflake credentials. Here is an example configuration:

    ```yaml
    your_project_name:
      target: dev
      outputs:
        dev:
          type: snowflake
          account: your_account
          user: your_username
          password: your_password
          role: your_role
          database: your_database
          warehouse: your_warehouse
          schema: your_schema
    ```

5. **Run dbt commands:**

    - **Parse the project:**

      ```sh
      dbt parse
      ```

    - **Compile the project:**

      ```sh
      dbt compile
      ```

    - **Run the project:**

      ```sh
      dbt run
      ```

    - **Test the project:**

      ```sh
      dbt test
      ```

6. **Run Dagster:**

    Start the Dagster UI with:

    ```sh
    dagster dev
    ```

    This will open the Dagster UI where you can manage and monitor your data workflows.

## License

This project is licensed under the MIT License.
