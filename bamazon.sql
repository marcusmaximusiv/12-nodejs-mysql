/*
This section of the sql creates the bamazon database and creates the table
called products. Once products is generated we insert mock data into the table
*/
DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products
(
    item_id INTEGER(11)
    AUTO_INCREMENT NOT NULL,
  product_name VARCHAR
    (100),
  department_name VARCHAR
    (100),
    price INTEGER
    (11),
    stock_quantity INTEGER
    (11),
    product_sales VARCHAR
    (100),  PRIMARY KEY
    (item_id)
);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Gummy Bears', 'Candy', 3.99, 10, 39.90);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Hair Straightening Serum', 'Beauty', 5.99, 10, 59.90);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Deoderant', 'Beauty', 4.99, 10, 49.90);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Bath Scrubby', 'Beauty', .99, 10, 9.90);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Dove Soap', 'Beauty', 5.00, 10, 50.00);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Vitamin Gummies', 'Health', 9.90, 10, 99.90);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Dial Hand Soap', 'Health', 2.90, 10, 29.90);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Doritos Flaming Hot Chips', 'Snacks', 4.90, 10, 49.90);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Monster Energy Drink', 'Health', 2.20, 10, 22.00);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity, product_sales)
    values
        ('Peanut M&Ms', 'Snacks', 1.99, 10, 19.90);

    CREATE TABLE departments
    (
        department_id INTEGER(11)
        AUTO_INCREMENT NOT NULL,
department_name VARCHAR
        (100),
over_head_costs VARCHAR
        (11),
PRIMARY KEY
        (department_id)
);