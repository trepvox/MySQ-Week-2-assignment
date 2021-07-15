-- 1) I want to know how many employees with each title were born after 1965-01-01. 

/* SELECT count(*) as "Number of Employees", t.title AS "Title"
 FROM employees e
 INNER JOIN titles t USING (emp_no)
	WHERE birth_date > '1965-01-01' 
    GROUP BY t.title
    ORDER BY t.title;
  */    

 
-- 2) I want to know the average salary per title.

/*SELECT t.title as "Title", FORMAT(avg(s.salary), 2) as "Average Salary" from titles t
 INNER JOIN salaries s USING (emp_no)
 GROUP BY t.title
 ORDER BY t.title;
*/

-- 3) How much money was spent on salary for the marketing department between the years 1990 and 1992? 

/* SELECT d.dept_name as "Department", FORMAT( sum(s.salary), 0) as "Total Spent" from departments d
 INNER JOIN dept_emp de ON de.dept_no = d.dept_no AND d.dept_name = "Marketing" 
 INNER JOIN salaries s on s.emp_no = de.emp_no
  WHERE s.from_date >= '1990-01-01' 
  AND s.from_date < '1993-01-01' ;
  */
--  WHERE s.from_date BETWEEN '1990-01-01' AND '1992-01-01' ;  was just trying this out to see how it worked as well
  