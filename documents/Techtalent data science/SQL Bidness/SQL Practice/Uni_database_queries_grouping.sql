/*Obtain the number of modules
which are assigned to each course*/
SELECT 	count(ModuleName), Subject FROM Module GROUP BY Subject;

/*Retrieve Information on the
number of successful applications
per course*/
SELECT count(accepted), CourseAppliedFor From Application where accepted = 1 GROUP BY CourseAppliedFor;

/*Find the average Membership Fee
of Student Clubs by the ID of the
Staff member (Lecturer)
supervising it*/
SELECT AVG(MembershipFee), SupervisingStaff FROM Club GROUP BY SupervisingStaff;

/*Find the Sum total of Joining
Fees for all active clubs by Staff
Member supervising them*/
SELECT SUM(JoiningFee), SupervisingStaff FROM Club where Active = 1 GROUP BY SupervisingStaff;