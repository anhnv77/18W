USE classicmodels;

/*1. Đưa ra thông tin về các nhân viên và tên văn phòng nơi họ làm việc.*/
SELECT e.*, o.city FROM employees e INNER JOIN offices o ON e.officeCode = o.officeCode;

/*2. Đưa ra thông tin về tên khách hàng và tên các sản phẩm họ đã mua.*/
SELECT c.*, p.productName 
FROM customers c
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
INNER JOIN products p ON od.productCode = p.productCode;

/*3. Đưa ra thông tin về các mặt hàng chưa có ai đặt mua.*/
SELECT * FROM products 
INNER JOIN orderdetails ON products.productCode <> orderdetails.productCode;

/*4. Đưa ra thông tin về các đơn hàng trong tháng 3/2005 (gồm orderDate,
requiredDate, Status) và tổng giá trị của mỗi đơn hàng .*/
SELECT o.orderDate, o.requiredDate, o.status, SUM(od.quantityOrdered * od.priceEach) as Total 
FROM orders o 
INNER JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE EXTRACT(YEAR FROM o.orderDate) = 2005 AND EXTRACT(MONTH FROM o.orderDate) = 3
GROUP BY o.orderNumber
ORDER BY Total DESC;

/*5. Đưa ra thông tin về các dòng sản phẩm và số lượng sản phẩm của dòng sản phẩm
đó. Sắp xếp theo thứ tự số lượng giảm dần.*/
SELECT productLine, SUM(p.quantityInStock + od.quantityOrdered) AS Total
FROM products p
INNER JOIN orderdetails od ON od.productCode = p.productCode
GROUP BY p.productLine
ORDER BY Total DESC

