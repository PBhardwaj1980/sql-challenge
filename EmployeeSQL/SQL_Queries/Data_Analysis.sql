--Data Analysis Point-1--
Select e.emp_no, e.last_name,e.first_name,e.sex,s.salary
from employees as e
inner join salaries s
on (e.emp_no=s.emp_no)
;

--Data Analysis Point-2--
Select first_name,last_name,hire_date
from employees
where hire_date like '%1986'
;

--Data Analysis Point-3--
select dm.dept_no,dm.emp_no as manager_emp_no, dp.dept_name,ep.emp_no,
ep.first_name as Manager_first_name,ep.last_name as Manager_last_name
from dept_emp as dm
inner join employees ep on (dm.emp_no=ep.emp_no)
inner join departments as dp on (dm.dept_no=dp.dept_no)
;

--Data Analysis Point-4--
select ep.emp_no,ep.first_name,ep.last_name,de.dept_no,dp.dept_name
from employees as ep
join dept_emp as de on (ep.emp_no=de.emp_no)
join departments as dp on (dp.dept_no=de.dept_no)
;

--Data Analysis Point-5--
Select emp_no,first_name,last_name,sex
from employees
where first_name like 'Hercules' and last_name like 'B%'
;

--Data Analysis Point-6--
select de.emp_no,ep.first_name,ep.last_name,dp.dept_name
from employees as ep
join dept_emp as de on (ep.emp_no=de.emp_no)
join departments as dp on (dp.dept_no=de.dept_no)
where dp.dept_name like 'Sales'
;

--Data Analysis Point-7--
select de.emp_no,ep.first_name,ep.last_name,dp.dept_name
from employees as ep
join dept_emp as de on (ep.emp_no=de.emp_no)
join departments as dp on (dp.dept_no=de.dept_no)
where dp.dept_name in ('Sales','Development');

--Data Analysis Point-8--
Select last_name, count(last_name) 
from employees
group by last_name
ORDER BY count(last_name) DESC
;

--Data Analysis--
Select e.sex,count(e.emp_no)
from employees as e
inner join salaries s
on (e.emp_no=s.emp_no)
group by e.sex
;

--Data Analysis--
select count (ep.emp_no),dp.dept_name
from employees as ep
join dept_emp as de on (ep.emp_no=de.emp_no)
join departments as dp on (dp.dept_no=de.dept_no)
group by dp.dept_name
;



