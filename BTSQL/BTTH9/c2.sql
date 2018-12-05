select *
from products p
inner join OrderDetails o on p.productcode = o.productcode
inner join Orders orr on o.orderNumber = orr.orderNumber
where orr.orderDate >= '2005-03-01' and orr.orderDate <= adddate('2005-03-01',interval(30) day)
group by orr.orderdate