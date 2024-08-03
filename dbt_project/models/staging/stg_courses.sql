WITH raw AS (
    SELECT * FROM {{source("Dp_sources", 'courses')}}
),
final AS (
    SELECT
        *,
        CASE
            WHEN Credits = 3 THEN 'Beginner'
            WHEN Credits = 4 THEN 'Intermediate'
            ELSE 'Advanced'
        END AS Course_Level,
        CASE
            WHEN CURRENT_DATE() BETWEEN Start_Date AND End_Date THEN 'Yes'
            ELSE 'No'
        END AS Is_Current,
        CASE
            WHEN CURRENT_DATE() < Start_Date THEN DATEDIFF('day', CURRENT_DATE(), Start_Date)
            ELSE 0
        END AS Days_To_Start,
        CASE
            WHEN CURRENT_DATE() > End_Date THEN 'Ended'
            WHEN CURRENT_DATE() BETWEEN Start_Date AND End_Date THEN 'Ongoing'
            ELSE 'Yet to Start'
        END AS Course_Status
    FROM raw
)

SELECT * FROM final
