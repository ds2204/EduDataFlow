WITH raw AS (
    SELECT * 
    FROM {{ source("Dp_sources", "students") }}
),

final AS (
    SELECT 
        *,
        YEAR(ENROLLMENT_DATE) AS Enrollment_Year, -- enrollment year
        FIRST_NAME || ' ' || LAST_NAME AS Full_Name, -- full names
        DATEDIFF('year', Date_of_Birth, CURRENT_DATE()) AS Age, -- age of the student
        CASE
            WHEN DATEDIFF('year', Date_of_Birth, CURRENT_DATE()) >= 18 THEN 'Yes'
            ELSE 'No'
        END AS Is_Adult, -- whether the student is 18 or older
        DATEDIFF('day', Enrollment_Date, CURRENT_DATE()) AS Days_Since_Enrollment -- number of days since enrollment
    FROM raw
)

SELECT * FROM final
