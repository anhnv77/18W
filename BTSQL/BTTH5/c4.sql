select datediff(requiredDate,orderDate) as datediff,orderDate,requiredDate 
from orders
order by datediff 
