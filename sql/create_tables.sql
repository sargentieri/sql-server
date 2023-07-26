CREATE TABLE Customer (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50) NULL,
    last_name Varchar(50) NULL,
)

CREATE TABLE Product (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(255) NOT NULL,
    price DECIMAL(18,2) NOT NULL
)

CREATE TABLE SalesOrderHeader (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    order_date DATETIME DEFAULT(getdate()) NOT NULL,
    customer_id INT NOT NULL REFERENCES Customer(id),
)

CREATE TABLE SalesOrderDetail (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    lineItemNo INT NOT NULL,
    quantity INT NOT NULL,
    product_id INT NOT NULL REFERENCES Product(id)
)
