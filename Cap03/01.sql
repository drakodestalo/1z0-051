-- Del departamento 100 debemos obtener la diferencia entre la fecha actual y 
-- el "HIRE_DATE", generando una cadena de nombre "diferencia" con el siguiente
-- formato: XX año(s) y XX mese(s)

define spp_years="(trunc(months_between(sysdate,hire_date) / 12))"

select concat(concat(last_name, ', '), first_name) as employee_name, hire_date,
  concat(
    concat(&spp_years.,' año(s)' )
    , concat( ' y ',concat(
      trunc(months_between(sysdate,hire_date) - (&spp_years. * 12))
      ,
      ' mese(s)'
      )
    )
  )
  as diferencia
from employees
where department_id = 100;