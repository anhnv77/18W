select productCode,sum(quantityInstock)
from products  
group by productCode