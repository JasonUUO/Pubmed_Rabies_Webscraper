/*Count how many students are
enrolled overall*/
SELECT COUNT(*) FROM Student;
/*Calculate the sum of full time fees
for every full-time course*/
SELECT SUM (FullTimeFee) FROM Fees;
/*Identify the cost of the least and
most expensive course*/
SELECT MAX(FullTimeFee) AS Most_Expensive_Course_Fulltime FROM Fees;
SELECT MAX(PartTimeFee) AS Most_Expensive_Course_Parttime FROM Fees;
SELECT MIN(FullTimeFee) AS Least_Expensive_Course_Fulltime FROM Fees;
SELECT MIN(PartTimeFee) AS Least_Expensive_Course_Parttime FROM Fees;
/*Calculate the average cost of all
part time courses*/
SELECT AVG(PartTimeFee) AS Average_parttime_fee FROM Fees;
/*Calculate the fee of each full time
course after applying (subtracting)
the scholarship discount*/
SELECT (FullTimefee - ScholarshipDiscount) AS Full_Time_Fee_With_Discount FROM Fees;