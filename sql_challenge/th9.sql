USE classicmodels;

/*2.  Tạo một bảng đặt tên là temp_orderdetails, sau đó thực hiện thêm dữ liệu trong
ngày gần đây nhất từ bảng orderdetails vào bảng trên */



CREATE TABLE IF NOT EXISTS temp_orderdetails AS SELECT * FROM orderdetails;
DELETE FROM temp_orderdetails;

INSERT INTO temp_orderdetails
SELECT * 
FROM classicmodels.orderdetails od
WHERE od.orderNumber in 
	(SELECT orderNumber 
    FROM orders o
    WHERE o.orderDate = 
    (SELECT MAX(orderDate) FROM orders)
	);

/*
3.  Sửa các nhân viên có titleJob là ‘Sales Rep’ thành ‘Sales Representative’
*/
UPDATE employees 
SET jobTitle = 'Sales Representative'
WHERE jobTitle = 'Sales Rep';

