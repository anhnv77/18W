/* select database  */
USE classicmodels;

/*1. Đưa ra danh sách các nhân viên có trường reportsTo chưa xác định.*/
SELECT * FROM employees WHERE reportsTo is NULL;

/*2. Đưa ra danh sách các CustomerNumber đã có thực hiện giao dịch.*/
SELECT customerNumber FROM payments WHERE !(paymentDate is Null);

/*3. Đưa ra danh sách các đơn hàng có ngày yêu cầu vận chuyển là ‘18/1/2003’.*/
SELECT * FROM orders WHERE requiredDate='2003-1-18'; 

/*Đưa ra danh sách các đơn hàng có ngày đặt trong tháng 4 năm 2005 và có trạng
thái là ‘Shipped’*/
SELECT * FROM orders WHERE (orderDate >= '2005/4/1') AND (orderDate <= '2005-4-31') AND status='Shipped';

/*Đưa ra danh sách các sản phẩm thuộc nhóm ‘Classic Cars’.*/
SELECT * FROM products WHERE productLine='Classic Cars';