-- Création de la table Customer
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER
);

-- Création de la table Product
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

-- Création de la table Orders
CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT fk_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT fk_Product FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

-- Ajout de la colonne Catégorie à la table Product
ALTER TABLE Product
ADD Catégorie VARCHAR2(20);

-- Ajout de la colonne OrderDate à la table Orders avec SYSDATE comme valeur par défaut
ALTER TABLE Orders
ADD OrderDate DATE DEFAULT SYSDATE;
