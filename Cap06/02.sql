
-- Obtener el salario promedio de los empleados agrupado
-- por manager

-- Manager Name (last_name || ', ' || first_name), avg(salary) <-- Empleados

select mgr.last_name || ', ' || mgr.first_name as manager, 
  count(emp.employee_id) as noemps,
  to_char(avg(emp.salary),'$99,999.99') as salary
from employees emp join employees mgr
on (emp.manager_id = mgr.employee_id)
group by mgr.last_name || ', ' || mgr.first_name;