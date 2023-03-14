-- Creating the Teachers Table
CREATE TABLE Teachers(
  Teacher_ID int(10),
  Firstname char(30),
  Surname char(30),
  Subject char(30),
  Years_worked int(10),
  PRIMARY KEY(Teacher_ID)
);

-- Creating the Students Table
CREATE TABLE Students(
  Student_ID int(10),
  Firstname char(30)
  Surname char(30)
  Subject char(30)
  Teacher_ID int(10)
  PRIMARY KEY (Student_ID) 
  FOREIGN KEY (Teacher_ID) REFERENCES TEACHERS(Teacher_ID)
);

-- inserting values into teachers table 
INSERT INTO Teachers VALUES (1,'Ansel','Bertina','English',5),(2,'Destiny','Keighley','Art',10),(3,'Alisha','Jez','RS',9),(4,'Rona','Abigayle','Maths',6),(5,'Cicely','Queen','RS',10),(6,'Elise','Sara','English',4),(7,'Bunny','Sookie','Science',6),(8,'Shelagh','Shantel','Art',9),(9,'Darlene','Carreen','Art',4),(10,'Emma','Mirabelle','Science',10);

-- inserting values into students table 

--updating the record Ansel Bertina has changed their last name 
UPDATE Teachers
SET Surname='Jacobs'
Where Teacher_ID = 1;


--Deleting records
DELETE FROM Teachers WHERE Teacher_ID = 7;