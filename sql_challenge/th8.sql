USE classicmodels;
/*1. Sử dụng truy vấn con đưa ra các sản phẩm có đơn đặt hàng trong tháng 3/2005.*/
SELECT * FROM products 
WHERE productCode in
	(SELECT productCode FROM orderdetails od 
	WHERE od.orderNumber IN
		(SELECT orderNumber FROM orders o 
        WHERE EXTRACT(YEAR FROM o.orderDate) = 2005 AND EXTRACT(MONTH FROM o.orderDate) = 3
        )
	); 

/*2. Tương tự như câu hỏi 1 nhưng dùng phép nối bảng thay vì sử dụng truy vấn con.*/
SELECT * FROM products p, 
	(SELECT productCode, orderNumber FROM orderdetails) AS od,
    (SELECT orderNumber, orderDate FROM orders) AS o
WHERE p.productCode = od.productCode 
AND od.orderNumber = o.orderNumber
AND EXTRACT(YEAR FROM o.orderDate) = 2005 AND EXTRACT(MONTH FROM o.orderDate) = 3;

/*3. Sử dụng truy vấn con đưa ra các thông tin về các đơn hàng trong tháng gần nhất
(sử dụng thông tin từ bảng orders).*/
SELECT * FROM orders
WHERE orderDate in 
	(SELECT MAX(orderDate) FROM orders);
/*4. Sử dụng truy vấn con đưa ra thông tin về các đơn hàng và tổng giá trị đơn hàng
(sử dụng thông tin từ bảng orders và orderdetails).*/

SELECT *,
	(SELECT SUM(quantityOrdered * priceEach) FROM orderdetails WHERE orderNumber = o.orderNUmber) AS total
 FROM orders o
 GROUP BY o.orderNumber;
 
 SELECT * FROM orderdetails;
 
 /*5.6.  Với mỗi khách hàng, đưa ra tổng số tiền hàng, và tổng số tiền họ đã thanh
toán*/




    