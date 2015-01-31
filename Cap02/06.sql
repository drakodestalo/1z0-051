-- Asumiendo que el dominio de la empresa es "acme.com", obtener el correo
-- completo de los empleados

select email || '@acme.com' as email
from employees;