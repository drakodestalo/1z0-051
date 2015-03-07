-- Obtener los empleados que vivan en el mismo pais
-- que Steven King (employee_id = 100)


select distinct last_name || ', ' || first_name as employee, street_address, postal_code, city,
  country_name
from countries c
  inner join locations l on (l.country_id = c.country_id)
  inner join departments d on (d.location_id = l.location_id)
  inner join employees e on (e.department_id = d.department_id)
where country_name = (  select country_name
                        from countries c
                          inner join locations l on (l.country_id = c.country_id)
                          inner join departments d on (d.location_id = l.location_id)
                          inner join employees e on (e.department_id = d.department_id)
                        where employee_id = 100
                      );