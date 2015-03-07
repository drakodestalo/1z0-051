-- Obtener los nombres de los empleados que no sean managers de nadie

select last_name || ', ' || first_name as employee
from employees
where employee_id not in (  select manager_id 
                            from employees
                            where manager_id is not null
                         );