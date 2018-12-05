select o.orderNumber
,(
  select sum(if(o.orderNumber =  x.orderNumber,quantityOrdered*priceEach,0))
  from OrderDetails x
 ) as Totel
from orders o
group by o.orderNumber
order by o.orderNumber 