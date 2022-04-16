CREATE DATABASE D4E31;

Use D4E31

CREATE TABLE Customer(
    NAME NVARCHAR(100),
    Age int,
    Address NVARCHAR (100)
)

INSERT INTO Customer(Name, Age, Address) VALUES (N'Nguyễn Lê Chí Bảo', 24, N'Hồ Chí Minh')
INSERT INTO Customer(Name, Age, Address) VALUES (N'Trần Văn Cường', 30, N'Hồ Chí Minh')

select *
from Customer

/*Tìm danh sách các khách hàng có số tuổi dưới 25*/
select *
from Customer
Where Age < 25

/*Tìm danh sách các khách hàng có địa chỉ ở HCM*/
select *
from Customer
Where Address = N'Hồ Chí Minh'

/*Tìm danh sách các khách hàng có số tuổi trên 18 và bé hơn 30*/

Where Age >18 and Age < 30

select *
from Film_Locations_in_San_Francisco

Select Title, Director, Writer FROM Film_Locations_in_San_Francisco

Select Title, Locations, Release_Year FROM Film_Locations_in_San_Francisco WHERE Release_Year >= 2001

Select Count (*) From Film_Locations_in_San_Francisco

Select Count (Locations) From Film_Locations_in_San_Francisco Where writer = 'James Cameron'

Select Count (Locations) From Film_Locations_in_San_Francisco Where writer = 'Woody Allen'

Select Count (Title) From Film_Locations_in_San_Francisco Where locations = 'Russian Hill'

/*Retrieve the number of rows having a release year older than 1950 from the "FilmLocations" table*/

Select Count (*) From Film_Locations_in_San_Francisco Where Release_year > = 1950

SELECT (Release_Year) FROM Film_Locations_in_San_Francisco WHERE Production_Company= 'Warner Bros. Pictures';

/*Retrieve the name of all unique films released in the 21st century and onwards, along with their release years.*/

Select Distinct Title, Release_year From  Film_Locations_in_San_Francisco WHERE Release_Year > = 2001



