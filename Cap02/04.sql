-- Del empleado 164, obtener su salario
SET VERIFY OFF --Quitamos la verificacion de variables

COLUMN nsal NEW_VALUE sp_nsal

select salary as nsal
from employees
where employee_id = 164;

-- Obtener el listado de las personas que ganan menos que esta persona
SET VERIFY OFF --Quitamos la verificacion de variables

select *
from employees
where salary < &sp_nsal.;

-- Del mismo listado, obtener los roles de trabajo
SET VERIFY OFF --Quitamos la verificacion de variables

select distinct job_id
from employees
where salary < &sp_nsal.;