select c.customerNumber , concat_ws(':',contactLastName,contactFirstName) as fullname,
sum(if(c.customerNumber = p.customerNumber,amount,0)) as Total,
sum(if(o.orderNumber = o1.orderNumber,o1.quantityOrdered*priceEach,0)) as XXX
from customers c
inner join payments p on c.customerNumber = p.customerNumber 
inner join orders o on o.customerNumber = c.customerNumber
inner join orderdetails o1 on o1.orderNumber = o.orderNumber
group by c.customerNumber, o.orderNumber