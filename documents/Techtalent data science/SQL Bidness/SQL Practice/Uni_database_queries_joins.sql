/*Obtain a list of all modules (table1) and
the names of any courses(table 2) they
may be taught*/
SELECT ModuleName, CourseName
FROM Module 
LEFT JOIN Course
ON Course.CourseID = Module.CourseID;

/*Obtain a list of student information along with
any related application numbers if they have them*/
SELECT * 
FROM Student 
LEFT JOIN Application 
ON Application.StudentID = Student.StudentID;

/*Obtain the Class ID, Class Date
and Feedback score of the latest
class scheduled for each Class
ID*/
SELECT schedule.ClassID, schedule.CDate, schedule.FeedbackScore FROM schedule
INNER JOIN (
    SELECT ClassID, MAX(CDate) AS LatestDate
    FROM schedule
    GROUP BY ClassID
) as Tb
ON schedule.ClassID = tb.ClassID AND schedule.CDate = tb.LatestDate;