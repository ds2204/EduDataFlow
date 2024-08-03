SELECT 
    e.Enrollment_ID,
    e.Student_ID,
    s.First_Name,
    s.Last_Name,
    e.Course_ID,
    e.Enrollment_Date,
    COUNT(e.Enrollment_ID) OVER (PARTITION BY e.Student_ID ORDER BY e.Enrollment_Date) AS Running_Total_Enrollments
FROM 
    enrollments e
JOIN 
    students s ON e.Student_ID = s.Student_ID
