-- Retomar el ejercicio anterior, y agregarle la diferencia en dias
-- formato: XX año(s), XX mese(s) y XX dia(s)

define spp_years="(trunc(months_between(sysdate,hire_date) / 12))"

select concat(concat(last_name, ', '), first_name) as employee_name, hire_date,
  concat(
    concat(&spp_years.,' año(s) y ' ) , concat(
      trunc(months_between(sysdate,hire_date) - (&spp_years. * 12))
      ,
      ' mese(s)'
      )
  )
  as diferencia, 
  to_char(sysdate,'DD') - to_char(hire_date,'DD')
from employees
where department_id = 100