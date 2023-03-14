/*Obtain a list of applications
where the CourseID is unknown*/
SELECT * FROM Application WHERE CourseAppliedFor IS NULL;

/*Obtain a list of students where
their CourseID is not unknown*/ 
SELECT Forenames, Surname FROM Application WHERE CourseAppliedFor IS NOT NULL;

/*Obtain a list of students whom
were born in the month of June
2002*/
SELECT Forenames, Surname FROM Student WHERE DateOfBirth BETWEEN '2002-06-01' and '2002-06-30';

/*Obtain a list of applications
where CourseID is unknown and
the applications where made
between 01/04/2020 and
31/07/2020*/
select * from Application where CourseAppliedFor IS NULL and DateOfApplication between '2020-04-01' and '2020-07-31';