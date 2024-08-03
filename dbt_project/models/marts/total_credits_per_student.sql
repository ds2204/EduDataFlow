SELECT *
FROM (
    SELECT 
        s.Student_ID,
        s.First_Name,
        s.Last_Name,
        c.Course_Name,
        c.Credits
    FROM 
        Enrollments e
    JOIN 
        Students s ON e.Student_ID = s.Student_ID
    JOIN 
        Courses c ON e.Course_ID = c.Course_ID
)
PIVOT (
    SUM(Credits) FOR Course_Name IN ('Data Science 101', 'Introduction to AI', 'Machine Learning', 'Python Programming', 'Cloud Computing')
) AS pivot_table
