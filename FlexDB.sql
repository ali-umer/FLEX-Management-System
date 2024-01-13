Create Database FLEX;
Use FLEX;

CREATE TABLE LogTable (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    TableName VARCHAR(255),
    UserID varchar(255),
    ChangeDate DATETIME DEFAULT GETDATE(),
    ChangeType VARCHAR(255)
);


CREATE TABLE UsersForLog
(
	ID VARCHAR(255),
	Priority INT,

	FOREIGN KEY(ID) REFERENCES Users(Username)

);


CREATE TRIGGER LogUsersChangeIns
ON users
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('User', @loggedInUserId, GETDATE(), 'INSERTED');
END


CREATE TRIGGER log_users_change_upt
ON users
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('User', @loggedInUserId, GETDATE(), 'INSERTED');
END


CREATE TRIGGER log_users_change_del
ON users
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('User', @loggedInUserId, GETDATE(), 'INSERTED');
END


CREATE TRIGGER log_admin_change_ins
ON admin
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Admin', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_admin_change_upt
ON admin
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Admin', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_admin_change_del
ON admin
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Admin', @loggedInUserId, GETDATE(), 'DELETED');
END


--3

CREATE TRIGGER log_faculty_change_ins
ON faculty
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Faculty', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_faculty_change_upt
ON faculty
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Faculty', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_faulty_change_del
ON faculty
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Faculty', @loggedInUserId, GETDATE(), 'DELETED');
END


--4

CREATE TRIGGER log_students_change_ins
ON students
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Students', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_students_change_upt
ON students
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Students', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_users_students_del
ON students
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Students', @loggedInUserId, GETDATE(), 'DELETED');
END

--5


CREATE TRIGGER log_studies_change_ins
ON studies
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Studies', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_studies_change_upt
ON studies
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Studies', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_studies_change_del
ON studies
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Studies', @loggedInUserId, GETDATE(), 'DELETED');
END

--6


CREATE TRIGGER log_grades_change_ins
ON grades
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Grades', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_grades_change_upt
ON grades
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Grades', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_grades_change_del
ON grades
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Grades', @loggedInUserId, GETDATE(), 'DELETED');
END

--7

CREATE TRIGGER log_courses_change_ins
ON courses
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Courses', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_courses_change_upt
ON courses
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Courses', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_courses_change_del
ON courses
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Courses', @loggedInUserId, GETDATE(), 'DELETED');
END

--8

CREATE TRIGGER log_prereq_change_ins
ON prereq
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Prereq', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_prereq_change_upt
ON prereq
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Prereq', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_prereq_change_del
ON prereq
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Prereq', @loggedInUserId, GETDATE(), 'DELETED');
END

--9


CREATE TRIGGER log_section_change_ins
ON sections
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Section', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_section_change_upt
ON sections
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Section', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_section_change_del
ON sections
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Section', @loggedInUserId, GETDATE(), 'DELETED');
END

--10

CREATE TRIGGER log_attendence_change_ins
ON attendance
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Attendence', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_attendence_change_upt
ON attendance
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Attendence', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_attendence_change_del
ON attendance
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Attendence', @loggedInUserId, GETDATE(), 'DELETED');
END

--11

CREATE TRIGGER log_quiz_change_ins
ON quiz
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Quiz', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_quiz_change_upt
ON quiz
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Quiz', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_quiz_change_del
ON quiz
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Quiz', @loggedInUserId, GETDATE(), 'DELETED');
END

--12

CREATE TRIGGER log_assignment_change_ins
ON Assignment
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Assignment', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_assignment_change_upt
ON Assignment
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Assignment', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_assignment_change_del
ON Assignment
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Assignment', @loggedInUserId, GETDATE(), 'DELETED');
END



--14
CREATE TRIGGER log_sessional_change_ins
ON sessionals
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('sessional', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_sessional_change_upt
ON sessionals
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Sessional', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_sessional_change_del
ON sessionals
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Sessional', @loggedInUserId, GETDATE(), 'DELETED');
END

--15


CREATE TRIGGER log_final_change_ins
ON final
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Finals', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_final_change_upt
ON final
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Finals', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_final_change_del
ON final
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Finals', @loggedInUserId, GETDATE(), 'DELETED');
END

--16


CREATE TRIGGER log_project_change_ins
ON project
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Project', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_project_change_upt
ON project
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Project', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_project_change_del
ON project
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Project', @loggedInUserId, GETDATE(), 'DELETED');
END

--17

CREATE TRIGGER log_feedback_change_ins
ON feedback
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Feedback', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_feedback_change_upt
ON feedback
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Feedback', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_feedback_change_del
ON feedback
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Feedback', @loggedInUserId, GETDATE(), 'DELETED');
END

--18

CREATE TRIGGER log_teaches_change_ins
ON teaches
AFTER INSERT 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Teaches', @loggedInUserId, GETDATE(), 'INSERTED');
END



CREATE TRIGGER log_teaches_change_upt
ON teaches
AFTER UPDATE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    

    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Teaches', @loggedInUserId, GETDATE(), 'UPDATED');
END



CREATE TRIGGER log_teaches_change_del
ON users
AFTER DELETE 
AS 
BEGIN
    DECLARE @loggedInUserId varchar(255);

    -- Retrieve the user ID of the logged-in user
    SELECT top(1) @loggedInUserId = ID FROM usersforlog order by priority desc;
    
	 
    INSERT INTO LogTable (TableName, UserID, ChangeDate, ChangeType)
    VALUES ('Teaches', @loggedInUserId, GETDATE(), 'DELETED');
END

CREATE TABLE Users (

    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Role VARCHAR(255),
    Name VARCHAR(255),
    DOB DATE,
    BloodGroup VARCHAR(255),
    Gender VARCHAR(255),
    CNIC VARCHAR(255),
    Nationality VARCHAR(255),
    Email VARCHAR(100),
    Contact VARCHAR(255),
    Campus VARCHAR(255),
    
    PRIMARY KEY (Username)
);

CREATE TABLE Admin (

    Username VARCHAR(255),
    
    PRIMARY KEY (Username),
    FOREIGN KEY (Username) REFERENCES Users(Username) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Faculty (

    Username VARCHAR(255),
    RoomNumber VARCHAR(255),
    Subject VARCHAR(255),
    SchoolYear VARCHAR(255),
    PRIMARY KEY (Username),
    FOREIGN KEY (Username) REFERENCES Users(Username) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Sections
(
	Name VARCHAR(255), 
	PRIMARY KEY(Name)
);

CREATE TABLE Students (
    RollNum VARCHAR(255),
    FatherName VARCHAR(255),
    Address VARCHAR(255),
    RegNo VARCHAR(255),
    Status VARCHAR(255),
    Semester VARCHAR(255),
    Degree VARCHAR(255),
    Batch VARCHAR(255),
    City VARCHAR(255),
    Country VARCHAR(255),
    
    PRIMARY KEY (RollNum),
    FOREIGN KEY (RollNum) REFERENCES Users(Username) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Courses (
    ID VARCHAR(255),
    Name VARCHAR(255),
    CreditHours INT,
    AssignmentWeightage INT,
    QuizWeightage INT,
    SessionalsWeightage INT,
    FinalsWeightage INT,
    ProjectWeightage INT,
    Semester INT,
    
    PRIMARY KEY (ID)
);

CREATE TABLE PreReq (

    ID VARCHAR(255),
    PrereqID VARCHAR(255),
    
    FOREIGN KEY (ID) REFERENCES Courses(ID),
    FOREIGN KEY (PrereqID) REFERENCES Courses(ID)
);

CREATE TABLE Studies (

    StudentID VARCHAR(255),
    CourseID VARCHAR(255),
    Section VARCHAR(255),
    
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(RollNum),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID),
    FOREIGN KEY (Section) REFERENCES Sections(Name)
);

CREATE TABLE Teaches (

    FacultyID VARCHAR(255),
    Section VARCHAR(255),
    CourseID VARCHAR(255),
    
    PRIMARY KEY (FacultyID, CourseID, Section),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(Username),
    FOREIGN KEY (Section) REFERENCES Sections(Name) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Courses(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Grades (

    StudentID VARCHAR(255),
    CourseID VARCHAR(255),
    Grade VARCHAR(255),
    
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(RollNum),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Attendance (

    StudentID VARCHAR(255),
    Date DATE,
    Section VARCHAR(255),
    FacultyID VARCHAR(255),
    Status VARCHAR(255),
    CourseID VARCHAR(255),
    
    PRIMARY KEY (StudentID, Date),
    FOREIGN KEY (Section) REFERENCES Sections(Name),
    FOREIGN KEY (StudentID) REFERENCES Students(RollNum),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(Username),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Quiz (

    ObtainedMarks INT,
    TotalMarks INT,
    CourseID VARCHAR(255),
    StudentID VARCHAR(255),
    FacultyID VARCHAR(255),
    
    FOREIGN KEY (CourseID) REFERENCES Courses(ID),
    FOREIGN KEY (StudentID) REFERENCES Students(RollNum),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(Username)
);

CREATE TABLE Assignment (

    ObtainedMarks INT,
    TotalMarks INT,
    CourseID VARCHAR(255),
    StudentID VARCHAR(255),
    FacultyID VARCHAR(255),
    
    FOREIGN KEY (CourseID) REFERENCES Courses(ID),
    FOREIGN KEY (StudentID) REFERENCES Students(RollNum),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(Username)
);

CREATE TABLE Sessionals (

    ObtainedMarks INT,
    TotalMarks INT,
    CourseID VARCHAR(255),
    StudentID VARCHAR(255),
    FacultyID VARCHAR(255),
    
    FOREIGN KEY (CourseID) REFERENCES Courses(ID),
    FOREIGN KEY (StudentID) REFERENCES Students(RollNum),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(Username)
);

CREATE TABLE Project (

    ObtainedMarks INT,
    TotalMarks INT,
    CourseID VARCHAR(255),
    StudentID VARCHAR(255),
    FacultyID VARCHAR(255),
    
    FOREIGN KEY (CourseID) REFERENCES Courses(ID),
    FOREIGN KEY (StudentID) REFERENCES Students(RollNum),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(Username)
);

CREATE TABLE Final (
    
    ObtainedMarks INT,
    TotalMarks INT,
    CourseID VARCHAR(255),
    StudentID VARCHAR(255),
    FacultyID VARCHAR(255),
    
    FOREIGN KEY (CourseID) REFERENCES Courses(ID),
    FOREIGN KEY (StudentID) REFERENCES Students(RollNum),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(Username)
);

CREATE TABLE Feedback (

    StudentID VARCHAR(255), 
    CourseID VARCHAR(255),
    FacultyID VARCHAR(255),
    Description VARCHAR(255),
    Percentage DECIMAL(5,2),
    
    PRIMARY KEY (StudentID, CourseID, FacultyID),
    FOREIGN KEY (StudentID) REFERENCES Students(RollNum),
    FOREIGN KEY (CourseID) REFERENCES Courses(ID),
    FOREIGN KEY (FacultyID) REFERENCES Faculty(Username)
);


BULK INSERT users
from 'C:\Users\alium\Desktop\populated data\Users.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT admin
from 'C:\Users\alium\Desktop\populated data\Admin.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT faculty
from 'C:\Users\alium\Desktop\populated data\Faculty.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT students
from 'C:\Users\alium\Desktop\populated data\Students.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT studies
from 'C:\Users\alium\Desktop\populated data\Studies.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT grades
from 'C:\Users\alium\Desktop\populated data\Grades.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT courses
from 'C:\Users\alium\Desktop\populated data\Courses.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT prereq
from 'C:\Users\alium\Desktop\populated data\Prereq.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT sections
from 'C:\Users\alium\Desktop\populated data\Sections.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT attendance
from 'C:\Users\alium\Desktop\populated data\Attendance.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT quiz
from 'C:\Users\alium\Desktop\populated data\Quiz.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT assignment
from 'C:\Users\alium\Desktop\populated data\Assignment.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);



BULK INSERT sessionals
from 'C:\Users\alium\Desktop\populated data\Sessionals.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT project
from 'C:\Users\alium\Desktop\populated data\Project.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT final
from 'C:\Users\alium\Desktop\populated data\Finals.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT feedback
from 'C:\Users\alium\Desktop\populated data\Feedback.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


BULK INSERT teaches
from 'C:\Users\alium\Desktop\populated data\teaches.csv'
with
(
fieldterminator = ',',
rowterminator = '\n',
firstrow = 2 , KEEPNULLS
);


select * from users;
select * from admin;
select * from faculty;
select * from students;
select * from studies;
select * from teaches;
select * from prereq;
select * from Assignment;
select * from quiz;
select * from sessionals;
select * from final;
select * from project;
select * from feedback;
select * from attendance;
select * from sections;
select * from courses;
select * from grades;


SELECT DISTINCT Q.studentid, Q.obtainedmarkssum1, Q.totalmarkssum1,A.obtainedmarkssum2, A.totalmarkssum2,S.obtainedmarkssum3,  S.totalmarkssum3,P.obtainedmarkssum4, P.totalmarkssum4, F.obtainedmarkssum5, F.totalmarkssum5 FROM   (SELECT studentid, SUM(obtainedmarks) AS obtainedmarkssum1, SUM(totalmarks) AS totalmarkssum1  FROM   quiz WHERE courseid = 'C-0000' AND facultyid = 'F-5632' GROUP  BY studentid) Q      JOIN (SELECT studentid, SUM(obtainedmarks) AS obtainedmarkssum2,SUM(totalmarks)   AS totalmarkssum2 FROM   assignment            WHERE courseid = 'C-0000' AND facultyid = 'F-5632' GROUP  BY studentid) A          ON Q.studentid = A.studentid         JOIN (SELECT studentid,                      SUM(obtainedmarks) AS obtainedmarkssum3,                      SUM(totalmarks)   AS totalmarkssum3               FROM   Sessionals               WHERE courseid = 'C-0000' AND facultyid = 'F-5632'              GROUP  BY studentid) S           ON Q.studentid = S.studentid         JOIN (SELECT studentid,                      SUM(obtainedmarks) AS obtainedmarkssum4,                      SUM(totalmarks)   AS totalmarkssum4               FROM   project               WHERE courseid = 'C-0000' AND facultyid = 'F-5632'              GROUP  BY studentid) P           ON Q.studentid = P.studentid         JOIN (SELECT studentid,                      SUM(obtainedmarks) AS obtainedmarkssum5,                      SUM(totalmarks)   AS totalmarkssum5               FROM   Final             WHERE courseid = 'C-0000' AND facultyid = 'F-5632'           GROUP  BY studentid) F         ON Q.studentid = F.studentid        JOIN studies Se         ON Se.studentID = Q.studentid WHERE  Se.section = 'A'

