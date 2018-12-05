select *
from products,
(
select  productCode
        from OrderDetails 
		where orderNumber in
        (
        select orderNumber
        from orders 
		where orderDate >= '2005-03-01' and orderDate <= adddate('2005-03-01',interval(30) day)
        )
        group by orderNumber

) as pro
where products.productCode = pro.productcode

