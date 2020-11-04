
-- Drop any existing Table
drop table Dept_emp;
drop table Dept_manager;
drop table Departments;
drop table Salaries;
drop table Employees;
drop table Titles;



--Create

CREATE TABLE Titles (
    title_id VARCHAR PRIMARY KEY NOT NULL,
    title VARCHAR   NOT NULL
);

CREATE TABLE Employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE Salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE Departments (
    dept_no VARCHAR  NOT NULL,
    dept_name VARCHAR  NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE Dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR   NOT NULL,
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR   NOT NULL,
	emp_no INT NOT NULL,
    PRIMARY KEY (emp_no,dept_no)
);


--Update

ALTER TABLE Employees ADD CONSTRAINT fk_title_emp FOREIGN KEY (emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES Employees (emp_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

--import the data in the same order that the tables were created

----Read Results----------------
SELECT * from Employees;
SELECT * from Departments;
SELECT * from Dept_emp;
SELECT * from Dept_manager;
SELECT * from Salaries;
SELECT * from Titles;