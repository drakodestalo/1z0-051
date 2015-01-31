-- Obtener el ID de Empleado (Employee ID) del departamento 100 que 
-- tenga un sueldo de 9000

select employee_id
from employees
where department_id = 100
  and salary = 9000;
