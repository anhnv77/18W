USE classicmodels;
/*1. Dùng toán tử IN để đưa ra thông tin của các khách hàng sống tại các thành phố
Nantes và Lyon.*/
SELECT * FROM customers WHERE city IN ('Nantes', 'Lyon');

/*2. Sử dụng BETWEEN để tìm các đơn hàng đã được chuyển trong khoảng thời gian
từ ‘10/1/2003’ đến ‘10/3/2003’.*/
SELECT * FROM orders WHERE shippedDate BETWEEN'2003-1-1' AND '2003-3-10';

/*3. Sử dụng LIKE để đưa ra thông tin về các nhóm hàng hoá có chứa từ ‘CARS’.*/
SELECT productLine FROM products WHERE productLine LIKE '%CARS%';

/*4. Truy vấn 10 sản phẩm có số lượng trong kho là lớn nhất.*/
SELECT * FROM products ORDER BY quantityInStock DESC LIMIT 10;

/*5. Đưa ra danh sách các sản phẩm và thêm thuộc tính là tiền hàng tồn của sản phẩm.*/
SELECT *, (buyPrice*quantityInStock) as tienhangtonkho FROM products;
