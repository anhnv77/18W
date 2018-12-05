SELECT *
FROM orders
where orderDate >= '2005-05-1' and orderDate <= adddate('2005-05-1',interval(30) DAY)