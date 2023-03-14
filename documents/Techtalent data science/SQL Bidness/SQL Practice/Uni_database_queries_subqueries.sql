/*Obtain the average of full time
fees from the Uni database*/
SELECT AVG(FullTimeFee) AS Average_fulltimefees 
FROM Fees;

/*Obtain a list of fees where the
full time fees are above their
calculated average*/
SELECT FullTimeFee FROM Fees WHERE FullTimeFee > (SELECT AVG(FullTimeFee) FROM Fees);

/*Sort the full times fee by
ascending order*/
SELECT FullTimeFee 
FROM Fees
ORDER BY FullTimeFee  ASC;