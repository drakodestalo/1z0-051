-- Obtener el grado de salario de todos los empleados
-- non-equijoins

select last_name || ', ' || first_name as employee, salary, grade_level
from employees e JOIN job_grades jg
ON ( e.salary between jg.lowest_sal AND jg.highest_sal)
;

  