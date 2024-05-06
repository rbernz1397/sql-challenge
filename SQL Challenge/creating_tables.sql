-- creating tables

create table departments(
    dept_no VARCHAR,
    dept_name VARCHAR
);

create table dept_emp(
    emp_no INTEGER,
    dept_no VARCHAR,
    foreign key(emp_no) REFERENCES employees(emp_no)
);

create table dept_manager(
    dept_no VARCHAR,
    emp_no INTEGER,
    foreign key(emp_no) REFERENCES employees(emp_no)
);

create table employees(
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR (30),
    last_name VARCHAR (30),
    sex VARCHAR,
    hire_date DATE
);

create table salaries(
    emp_no INTEGER,
    salary INTEGER,
    foreign key(emp_no) REFERENCES employees(emp_no)
);

create table titles(
    title_id VARCHAR,
    title VARCHAR
);
