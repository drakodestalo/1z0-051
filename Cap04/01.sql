-- Retomar el ejercicio anterior, y agregarle la diferencia en dias
-- formato: XX a�o(s), XX mese(s) y XX dia(s)

define spp_years="(trunc(months_between(sysdate,hire_date) / 12))"

select last_name || ', ' || first_name as employee_name, hire_date,
  &spp_years. || ' a�o(s) y ' || 
      trunc(months_between(sysdate,hire_date) - (&spp_years. * 12))
      || ' mese(s) y ' || to_char(sysdate,'DD') - to_char(hire_date,'DD') || ' dia(s)' 
  as diferencia
from employees
where department_id = 100