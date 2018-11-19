USE classicmodels;

/*1. Đưa ra tên các thành phố và số lượng khách hàng tại từng thành phố.*/
SELECT country, count(*) FROM customers GROUP BY country;

/*2. Đưa ra số lượng các đơn đặt hàng trong tháng 3/2005.*/
SELECT COUNT(*) AS total FROM orders WHERE EXTRACT(YEAR FROM orderDate) = 2005 AND EXTRACT(MONTH FROM orderDate) = 3;

/*2.3.  Đưa ra số lượng các đơn đặt hàng trong từng tháng của năm 2005*/
SELECT EXTRACT(MONTH FROM orderDate), count(*) FROM orders WHERE EXTRACT(YEAR FROM orderDate) = 2005 GROUP BY EXTRACT(MONTH FROM orderDate);

/*3.4.  Đưa ra 10 mã đơn đặt hàng có giá trị lớn nhất.*/
SELECT productCode, priceEach FROM orderdetails GROUP BY productCode ORDER BY priceEach DESC LIMIT 10; 

/*4.5.  Đưa ra mã nhóm hàng và tổng số lượng hàng hoá còn trong kho của nhóm
hàng đó.*/
SELECT productCode, quantityInStock FROM products GROUP BY productCode;

