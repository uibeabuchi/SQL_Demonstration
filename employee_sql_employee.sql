select * from employees;
select * from department;
select * from dept_emp;
select * from dept_manager;
select * from salaries;
select * from title;

/* My Data Analysis questions
Question 1 */
select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
 from employees
 inner join salaries on 
 employees.emp_no = salaries.emp_no;
 
/* Question 2 */
select * from employees
where employees.hire_data between '1986-01-01' and  '1986-12-31';

/*Question 3*/
select department.dept_no, department.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, 
	dept_manager.from_date, dept_manager.to_date    
	from employees
	inner join dept_manager on 
		employees.emp_no = dept_manager.emp_no
	inner join department on 
		department.dept_no = dept_manager.dept_no
	order by  department.dept_name;

/*Question 4*/
select employees.emp_no, employees.last_name, employees.first_name, department.dept_name
	from employees
	inner join dept_emp on 
	employees.emp_no = dept_emp.emp_no
	inner join department on 
	department.dept_no = dept_emp.dept_no
	order by department.dept_name;


/*Question 5*/
select first_name, last_name 
	from employees
	where first_name = 'Hercules' and last_name like 'B%';

/*Question 6*/
select employees.emp_no, employees.last_name, employees.first_name, department.dept_name
	from employees 
	inner join dept_emp on employees.emp_no = dept_emp.emp_no
	inner join department on department.dept_no = dept_emp.dept_no
	where department.dept_name = 'Sales';
	

/*Question 7*/
select employees.emp_no, employees.last_name, employees.first_name, department.dept_name
	from employees
	inner join dept_emp on dept_emp.emp_no = employees.emp_no
	inner join department on dept_emp.dept_no = department.dept_no
	where department.dept_name = 'Sales' or department.dept_name = 'Development';


/*Question 8*/	
select count(last_name), last_name
	from employees
	group by last_name
	order by count(last_name) desc;



