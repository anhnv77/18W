select e.lastname,e.firstname,e.email,if(o.officecode = e.officecode,o.country,'null') as country
from employees e join offices o ON e.officecode = o.officecode