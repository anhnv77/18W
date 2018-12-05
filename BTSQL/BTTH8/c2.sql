select c.customerName,c.contactLastName,c.contactFirstName,p.productName
from customers c 
inner join orders o on c.customerNumber = o.customerNumber
inner join orderdetails op on op.ordernumber = o.ordernumber
inner join products p on p.productCode = op.productCode
