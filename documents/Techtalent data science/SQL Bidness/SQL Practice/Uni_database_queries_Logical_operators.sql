/*Write a select statement to obtain all the
information for the unsuccessful applications
made for Course 11*/
SELECT * FROM Application WHERE accepted = 0;
/*Modify the select statement from the previous
example into a delete statement and delete the
unsuccessful Course 11*/
DELETE FROM Application WHERE accepted = 0;
/*Write a select statement to identify the
unsuccessful applications for course 1 made
after 2020-03-01*/
SELECT * FROM Application Where CourseAppliedFor = 1 and accepted = 0 and DateofApplication > '2020-03-01';
/*Using the select statement from the previous
example, modify it into an update statement
and update the applications to successful*/
UPDATE Application SET accepted = 1 Where CourseAppliedFor = 1 and accepted = 0 and DateofApplication > '2020-03-01';