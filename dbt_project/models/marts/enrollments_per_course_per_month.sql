SELECT *
FROM (
    SELECT 
        TO_CHAR(e.Enrollment_Date, 'YYYY-MM') AS Month,
        c.Course_Name,
        COUNT(e.Enrollment_ID) AS Enrollment_Count
    FROM 
        Enrollments e
    JOIN 
        Courses c ON e.Course_ID = c.Course_ID
    GROUP BY 
        TO_CHAR(e.Enrollment_Date, 'YYYY-MM'),
        c.Course_Name
)
PIVOT (
    MAX(Enrollment_Count) 
    FOR Course_Name IN ('Data Science 101', 'Introduction to AI', 'Machine Learning', 'Python Programming', 'Cloud Computing')
) AS pivot_table
