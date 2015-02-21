-- Retomar el ejercicio anterior, y agregarle la diferencia en dias
-- formato: XX año(s), XX mese(s) y XX dia(s)

define spp_years="(trunc(months_between(sysdate,hire_date) / 12))"
define spp_months="(trunc(months_between(sysdate,hire_date) - (&spp_years. * 12)))"

select last_name || ', ' || first_name as employee_name, hire_date,
  &spp_years. || decode(&spp_years., 1 ,' año y ',' años y ' ) || 
  &spp_months. || decode(&spp_months., 1,' mes y ', ' meses y ')||
  (to_char(sysdate,'DD') - to_char(hire_date,'DD')) || 
  ' dia(s)'
  diferencia
from employees
where department_id = 100