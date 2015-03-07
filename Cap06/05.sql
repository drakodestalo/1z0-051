-- obtener la fecha maxima de contratacion por departamento,
-- si el departamento no tiene empleados, obtenemos SYSDATE
-- si el empleado no tiene departamento, lo agregamos al departamento ficticio (nodept)

-- Administration   25-FEB-94
-- Treasury         7-MAR-15
-- (NODEPT)         2-FEB-84

select nvl(department_name,'(NODEPT)') as department_name, 
  nvl(max(hire_date),sysdate) as fecha
FROM employees e FULL OUTER JOIN departments d
  ON (e.department_id = d.department_id)
GROUP BY nvl(department_name,'(NODEPT)')
order by department_name;
