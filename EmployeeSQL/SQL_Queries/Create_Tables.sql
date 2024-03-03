-- Create a new table
create table departments (
	dept_no  varchar PRIMARY KEY,
	dept_name varchar (30)
);

create table dept_emp (
	emp_no int Not null,
	dept_no varchar(30)
);

create table dept_manager (
	dept_no varchar(30),
	emp_no int Primary Key
);

create table employees (
	emp_no int Not Null PRIMARY KEY,
	emp_title_id  varchar,
	birth_date varchar Not Null,
	first_name varchar Not Null,
	last_name varchar Not Null,
	sex varchar Not Null,
	hire_date varchar Not Null,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);


create table salaries (
	emp_no int Not Null PRIMARY KEY,
	salary int
);

create table titles (
	title_id varchar PRIMARY KEY,
	title varchar (30),
);

