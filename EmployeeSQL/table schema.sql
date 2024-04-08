
-- Create Departments Table
CREATE TABLE Departments (
    dept_no VARCHAR(50) not null PRIMARY KEY,
    dept_name VARCHAR(50) not null
);

-- Create Employees Table
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(300) not null,
    birth_date DATE,
    first_name VARCHAR(500),
    last_name VARCHAR(500),
	sex CHAR(1),
    hire_date DATE
);

-- Create Dept_emp Table
CREATE TABLE Dept_emp (
	id serial primary key,
	emp_no INT,
    dept_no VARCHAR(400) not null,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Create Dept_manager Table
CREATE TABLE Dept_manager (
	id serial primary key,
    emp_no INT,
    dept_no VARCHAR(400) not null,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Create Salaries Table
CREATE TABLE Salaries (
    emp_no INT,
    salary INT,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Create Titles Table
CREATE TABLE Titles (
    title_id VARCHAR(50) not null PRIMARY KEY,
    title VARCHAR(50)
);