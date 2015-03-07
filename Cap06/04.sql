-- Obtener el total de empleados por departamento
-- Contabilizar los departamentos que no tengan empleados
-- Outer join

select department_name, count(employee_id) as total
from employees e right outer join departments d
  on (e.department_id = d.department_id)
group by department_name;