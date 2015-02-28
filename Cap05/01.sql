-- En este caso, utilizamos solo una columna en la agrupacion y a su vez la usamos
-- en diferentes partes de la proyeccion, la regla aqui es que sea la misma para
-- todas las proyecciones que no usen funciones de agrupacion

-- ejemplo: trunc(hire_date, 'MM')

select to_char(trunc(hire_date ,'MM'),'MON') as year,
  to_char(trunc(hire_date,'MM'),'MM') as month,
  to_char(avg(salary),'$99,999.99') as salary
from employees
group by trunc(hire_date,'MM')
order by 1, 2;



