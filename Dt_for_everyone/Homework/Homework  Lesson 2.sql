Create database Homework2;

/*1. SELECT*/

/*Ex1: Lấy tất cả thông tin đơn hàng trong cửa hàng*/
Select * From sales_data_sample

/*Ex2: Lấy thông tin về ORDERNUMBER, PRODUCTCODE, QUANTITYORDERED của các đơn đặt hang*/
Select ORDERNUMBER, PRODUCTCODE, QUANTITYORDERED From sales_data_sample

/*Ex3: Lấy thông tin các đơn không được giao thành công*/
Select * From sales_data_sample WHERE STATUS != 'Shipped'

/*Ex4: Lấy thông tin các đơn đặt hàng với điều kiện: COUNTRY = ‘USA’*/
Select * From sales_data_sample WHERE COUNTRY = 'USA' 

/*Ex5: Lấy thông tin các đơn đặt hàng với DEALSIZE là Small hoặc Medium*/
Select * From sales_data_sample WHERE (DEALSIZE = 'Small') or ( DEALSIZE ='Medium' )

/*Ex6: Lấy thông tin các đơn đặt hàng trước năm 2005 (YEARID < 2005)*/
Select * From sales_data_sample WHERE (YEAR_ID <  2005)

/*Ex7: Lấy thông tin những đơn hàng có giá trị trên 2000 (lưu ý cột PRICEEACH VÀ QUANTITYORDERED)*/
SELECT* From sales_data_sample WHERE (PRICEEACH*QUANTITYORDERED > 2000)

/*2.COUNT, DISTINCT*/

/*Ex1. Tính số lượng đơn hàng trong cửa hàng*/
Select COUNT (ORDERNUMBER) From sales_data_sample 

/*Ex2: Tính tổng số lượng đơn hàng đã giao thành công*/
SELECT COUNT(ORDERNUMBER) From sales_data_sample WHERE STATUS = 'SHIPPED'

/*Ex3. Có bao nhiêu mã sản phẩm (PRODUCTCODE)*/
SELECT COUNT(DISTINCT PRODUCTCODE) From sales_data_sample

/*Ex4. Có bao nhiêu dòng sản phẩm (PRODUCTLINE)*/
SELECT COUNT(Distinct PRODUCTLINE) From sales_data_sample

/*Cửa hàng đã bán được cho bao nhiêu khách hàng?*/
SELECT COUNT( Distinct CUSTOMERNAME) From sales_data_sample

/*Có bao nhiêu khách hàng mua DEALSIZE là small*/
SELECT COUNT( Distinct CUSTOMERNAME) From sales_data_sample WHERE DEALSIZE = 'small'

/*Ex7: Trong năm 2003, cửa hàng đó đã bán thành công được bao nhiêu đơn hàng?*/
SELECT COUNT(ORDERNUMBER) From sales_data_sample WHERE (STATUS = 'SHIPPED' and YEAR_ID = 2003)

/*Ex8: Số lượng đơn hàng của dòng sản phẩm Motorcycles ở thị trường USA là bao nhiêu?*/
SELECT Count(ORDERNUMBER) From sales_data_sample WHERE (PRODUCTLINE = 'Motorcycle' and COUNTRY= 'USA')







