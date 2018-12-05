select orderDate, count(*) as countOder  
from orders
group by orderDate
having orderDate >= '2005-03-1' and orderDate <= adddate('2005-03-1',interval(30) Day)
