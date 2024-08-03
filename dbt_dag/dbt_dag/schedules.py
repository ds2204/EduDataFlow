
from dagster_dbt import build_schedule_from_dbt_selection

from .assets import dbt_project_dbt_assets

schedules = [
     build_schedule_from_dbt_selection(
         [dbt_project_dbt_assets],
         job_name="materialize_dbt_models",
         cron_schedule="5 4 * * sun",
         dbt_select="fqn:*",
     ),
]