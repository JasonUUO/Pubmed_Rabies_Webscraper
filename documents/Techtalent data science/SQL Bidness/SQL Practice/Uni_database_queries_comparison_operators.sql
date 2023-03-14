--Obtain all information on the Students not attending course 1
SELECT * FROM Student WHERE CourseID != 1;

/* Obtain the first name, surname and 
Date of Birth for the student with the email address: val.bolger@example.com*/

SELECT Forenames, Surname, DateOfBirth FROM Student WHERE EmailAddress = 'val.bolger@example.com';

/*Obtain a list of the modules which
have the subject Economics*/
SELECT * FROM Module WHERE Subject = 'Economics';

/*Obtain a list of courses applied for and their application dates which
are scheduled before 21st
September 2020*/
SELECT * FROM Application WHERE DateOfApplication < '2020-09-21';