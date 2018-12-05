select p.productline,sum(if(product.productline = p.productline,product.quantityInStock,0)) as Total
from productlines p
inner join products product on p.productline = product.productline
group by p.productline