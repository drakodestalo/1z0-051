-- Obtener empleados que no tienen Gerente (manager_id)

select * from employees where manager_id is null;