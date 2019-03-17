DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(

ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
PRODUCT_NAME VARCHAR(50) DEFAULT FALSE,
DEPARTMENT_NAME VARCHAR(50) DEFAULT FALSE,
SUBDEPARTMENT_NAME VARCHAR(50) DEFAULT FALSE,
PRICE DEC(4,2) DEFAULT 0,
STOCK_QUANTITY INT DEFAULT 0
);


INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("botanical wall art prints", "art", "art", 19.97, 100);

INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("the giving tree", "books", "classic children's books", 8.79, 5000);

INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("pruina pro sport dry dog food", "pet supplies", "dog food", 19.97, 100);

INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("greatest hits, queen", "movies, music & games", "cds & vinyl", 21.14, 972);

INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("dysphoria, starbreaker", "movies, music & games", "cds & vinyl", 9.97, 25);

INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("decorative pillow", "home, garden & tools", "bed & bath", 19.97, 100);

INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("rice krispies treats", "food & grocery", "grocery & gourmet food", 3.68, 1000);

INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("trademark poker table top", "sports & outdoors", "leisure sports & game room", 46.87, 65);

INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("candyland princess edition", "toys, kids & baby", "kids' birthday gifts", 20.25, 109);

INSERT INTO products (PRODUCT_NAME, DEPARTMENT_NAME, SUBDEPARTMENT_NAME, PRICE, STOCK_QUANTITY)
VALUES ("beard kit multi-functional tool", "beauty & health", "men's grooming", 17.98, 286);

select* from products;
