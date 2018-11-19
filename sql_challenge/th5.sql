USE classicmodels;

/*1. Lấy ra 50 ký tự đầu tiên của phần mô tả sản phẩm, đặt tên là ‘Title of products’*/
SELECT SUBSTRING(productDescription, 1, 50)  AS 'Title of products' FROM products;

/*2. Đưa ra mô tả về các nhân viên theo định dạng ‘Fullname, jobTitle.’*/
SELECT CONCAT(lastName, ' ', firstName, ', ', jobTitle) AS 'Describe' FROM employees;

/*3. Thay thế toàn bộ tên nhóm hàng ‘Cars’ thành ‘Automobiles’.*/
UPDATE products SET productLine = REPLACE(productLine, 'Cars', 'Automobiles') WHERE productLine='Cars';

/*4.Tìm 5 đơn hàng được vận chuyển sớm nhất so với ngày yêu cầu hẹn.*/
SELECT * FROM orders ORDER BY DATEDIFF(requiredDate, shippedDate) ASC LIMIT 5;

/*5. Đưa ra các đơn đặt hàng trong tháng 5 năm 2005 và có ngày chuyển hàng đến
chưa xác định.*/
SELECT * FROM orders WHERE EXTRACT(YEAR FROM orderDate) = 2005 AND EXTRACT(MONTH FROM orderDate) = 5 AND shippedDate is NULL; 