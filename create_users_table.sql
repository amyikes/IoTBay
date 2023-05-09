CREATE TABLE Customer
(	Customer_ID   INT,
	First_name	VARCHAR(50)	NOT NULL,
	Last_name       VARCHAR(50)	NOT NULL,
	Email	            VARCHAR(20)	NOT NULL,
	Phone_number INT		NOT NULL, 
	Password	VARCHAR(20)	NOT NULL,
	City VARCHAR(20),
	Street VARCHAR(20),
	Suburb VARCHAR(20),
	State VARCHAR(20),
	Number VARCHAR(3),	
CONSTRAINT Customer_PK PRIMARY KEY (Customer_ID));

CREATE TABLE Product
(   Product_ID INT 			NOT NULL,
    Product_description VARCHAR(150),
    Stock_level INT,	
    Date_added DATE,  
    Price  FLOAT,
CONSTRAINT Product_PK PRIMARY KEY (Product_ID));

CREATE TABLE Orders
( 	Order_ID INT		NOT NULL,
	Order_date DATE,
	Customer_ID INT		NOT NULL, 
CONSTRAINT Order_PK PRIMARY KEY (Order_ID),
CONSTRAINT ORDER_FK1 FOREIGN KEY (Customer_ID) REFERENCES Customer);

CREATE TABLE Admin
(	Admin_ID INT 		NOT NULL,
	Email VARCHAR(50) 		NOT NULL, 
	Password VARCHAR(40)	NOT NULL,
CONSTRAINT Admin_PK PRIMARY KEY (Admin_ID));

CREATE TABLE Order_items 
(	Order_ID INT 		NOT NULL,
	Product_ID INT 		NOT NULL,
	Quantity INT		NOT NULL,
CONSTRAINT Order_items_PK PRIMARY KEY (Order_ID,Product_ID),
CONSTRAINT Order_items_FK1 FOREIGN KEY (Order_ID) REFERENCES Orders,
CONSTRAINT Order_items_FK2 FOREIGN KEY (Product_ID) REFERENCES Product);
