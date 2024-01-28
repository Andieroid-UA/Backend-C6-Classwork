CREATE TABLE StudentGrades (
	StudentID int,
	Subject text,
	Grade text,
	Name text
);

CREATE TABLE Students (
	StudentID int PRIMARY KEY,
	Name text
);

CREATE TABLE Grades (
	StudentID int,
	Subject text,
	Grade text,
	FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-------------------------------------------------

INSERT INTO Students (StudentID, Name)
SELECT DISTINCT StudentID, Name
FROM StudentGrades;

INSERT INTO Grades (StudentID, Subject, Grade)
SELECT StudentID, Subject, Grade
FROM StudentGrades;

DROP TABLE StudentGrades;