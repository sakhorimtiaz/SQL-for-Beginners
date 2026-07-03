/*
CREATE TABLE employees_roster (
    employeeid INT PRIMARY KEY,
    employeename VARCHAR(150),
    managerid INT
);
*/
/*
CREATE TABLE students (
    studentid INT PRIMARY KEY,
    studentname VARCHAR(100)
);
*/

/*
CREATE TABLE courses (
    courseid VARCHAR(10) PRIMARY KEY,
    coursename VARCHAR(100)
);
*/
/*
CREATE TABLE shoporder (
    orderid VARCHAR(50),
    amount NUMERIC(10, 2) NOT NULL, -- Kept because a transaction must have a price
    profit NUMERIC(10, 2) NOT NULL, -- Kept because a transaction must calculate financial impact
    quantity INT NOT NULL,          -- Kept because you must buy at least 1 item
    category VARCHAR(100),          -- Safe: can be empty
    subcategory VARCHAR(100)        -- Safe: can be empty
);
*/
/*
CREATE TABLE customer (
    orderid VARCHAR(50) PRIMARY KEY, -- Must be NOT NULL by default because it is the Primary Key
    orderdate DATE NOT NULL,         -- Kept because we must know when it happened
    customername VARCHAR(250),       -- Safe: can be empty
    state VARCHAR(100),               -- Safe: can be empty
    city VARCHAR(100)                 -- Safe: can be empty
);
*/
/*
CREATE TABLE zoo_1(
id INT,
animal VARCHAR (100)
)
*/

/*
CREATE TABLE zoo_2(
id INT,
animal VARCHAR (100)
)
*/

/*
CREATE TABLE employee (
    id INT,
    name VARCHAR(100),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(20),
    email VARCHAR(100),
    phone VARCHAR(30),
    occupation VARCHAR(100),
    salary INT,
    marital_status VARCHAR(20),
    dob DATE,
    department VARCHAR(100)
);
*/

/*
CREATE TABLE courses (
    course_id INT,
    course_title VARCHAR(150),
    price NUMERIC
);
*/

/*
CREATE TABLE log_timein (
id INT,
firstname VARCHAR(150),
lastname VARCHAR(150),
logdate	DATE,
logtime TIME
)
*/
/*
CREATE TABLE supermarket_sales (
    invoiceid VARCHAR(50) PRIMARY KEY,
    branch CHAR(1) NOT NULL,
    city VARCHAR(100) NOT NULL,
    customertype VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    productline VARCHAR(100) NOT NULL,
    unitprice NUMERIC(10, 2) NOT NULL,
    quantity INT NOT NULL,
    tax NUMERIC(10, 4) NOT NULL,
    total NUMERIC(10, 4) NOT NULL,
    salesday INT NOT NULL,
    salesmonth INT NOT NULL,
    salesyear INT NOT NULL,
    payment VARCHAR(50) NOT NULL,
    cogs NUMERIC(10, 2) NOT NULL,
    grossmarginpercentage NUMERIC(5, 2) NOT NULL,
    grossincome NUMERIC(10, 4) NOT NULL,
    rating NUMERIC(3, 1) NOT NULL
); */

/*
CREATE TABLE retail_customer (
    customer_id INT PRIMARY KEY,
    dob DATE,
    gender CHAR(1),
    city_code INT
);
*/

/*
CREATE TABLE retail_products (
    cat_code INT,
    cat VARCHAR(100),
    sub_cat_code INT,
    sub_cat VARCHAR(100),
    PRIMARY KEY (cat_code, sub_cat_code)
);
*/
/*
CREATE TABLE retail_transaction (
    transaction_id BIGINT, -- Using BIGINT because IDs exceed standard 2-billion INT limits
    customer_id INT,
    tran_date DATE,
    sub_cat_code INT,
    cat_code INT,
    qty INT,
    rate NUMERIC(10, 2),
    tax NUMERIC(10, 3),
    total_amt NUMERIC(10, 3),
    store_type VARCHAR(50)
);

*/
CREATE TABLE landslide_records (
    row_id INT PRIMARY KEY,
    hazard_date DATE NOT NULL,
    continent_code VARCHAR(5),
    country_name VARCHAR(100),
    country_code CHAR(2),
    state_province VARCHAR(100),
    population INT,
    city_town VARCHAR(100),
    distance NUMERIC(8,4),       -- Handles precise decimal distance
    latitude NUMERIC(7,4),       -- Spatial coordinate spacing
    longitude NUMERIC(7,4),      -- Spatial coordinate spacing
    hazard_type VARCHAR(50),
    landslide_type VARCHAR(100),
    landslide_size VARCHAR(50),
    trigger_cause VARCHAR(100)   -- 'trigger' is a reserved SQL keyword
);
