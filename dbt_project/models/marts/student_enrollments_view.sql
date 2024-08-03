SELECT 
    s.Student_ID,
    s.First_Name,
    s.Last_Name,
    s.Email,
    c.Course_Name,
    c.Instructor_Name,
    e.Enrollment_Date
FROM 
    {{ ref('stg_students') }} s
JOIN 
    {{ ref('stg_enrollments') }} e ON s.Student_ID = e.Student_ID
JOIN 
    {{ ref('stg_courses') }} c ON e.Course_ID = c.Course_ID
