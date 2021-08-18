// Création des tables 

CREATE TABLE Product(
    Product_id VARCHAR(20) CONSTRAINT c_product PRIMARY KEY,
    Product_name VARCHAR(20) CONSTRAINT c_name NOT NULL,
    Price NUMBER
)

CREATE TABLE Customer(
    Customer_id VARCHAR(20) CONSTRAINT c_customer PRIMARY KEY,
    Customer_name VARCHAR(20) CONSTRAINT con_name NOT NULL,
    Customer_tel NUMBER
)

CREATE TABLE Orders(
    CONSTRAINT order_product FOREIGN KEY Product_id REFERENCES Product (Product_id)
    CONSTRAINT order_customer FOREIGN KEY Customer_id REFERENCES Customer (Customer_id)
    Quantity NUMBER,
    Total_amount NUMBER
)

// Ajout d une nouvelle colonne a la table Product 

ALTER TABLE Product ADD Category VARCHAR2(20) ;

// Ajout d une nouvelle colonne a la table Orders avec une valeur par defaut 

ALTER TABLE Orders  ADD CONSTRAINT order_date  DEFAULT GETDATE(SYSDATE) FOR OrderDate

