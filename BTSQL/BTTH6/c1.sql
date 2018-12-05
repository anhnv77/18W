select city, count(*) customerCity
from customers
group by city
