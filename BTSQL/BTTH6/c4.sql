select productCode, sum(quantityOrdered*priceEach) as Gia
from OrderDetails 
group by productCode
order by Gia desc
limit 10
