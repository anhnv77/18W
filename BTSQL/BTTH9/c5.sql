select o.orderNumber, sum(if(o.orderNumber = x.orderNumber,x.quantityOrdered*x.priceEach,0)) as Total
from orders o
inner join OrderDetails x on x.orderNumber = o.orderNumber 
group by o.orderNumber