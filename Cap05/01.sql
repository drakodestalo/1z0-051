select to_char(trunc(hire_date ,'MM'),'MON') as year,
  to_char(trunc(hire_date,'MM'),'MM') as month,
  to_char(avg(salary),'$99,999.99') as salary
from employees
group by trunc(hire_date,'MM')
order by 1, 2;



