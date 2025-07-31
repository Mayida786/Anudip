
//creation of database company_orders
mysql> create database company_orders;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+----------------------------+
| Database                   |
+----------------------------+
| anudip                     |
| company                    |
| company_orders             |
| dim                        |
| dimpal                     |
| dspbn                      |
| employee_management_system |
| hostel                     |
| hostel_2                   |
| hostel_management          |
| information_schema         |
| mydatabase                 |
| mysql                      |
| orders                     |
| pdsbn                      |
| performance_schema         |
| student_management         |
| students                   |
| sys                        |
+----------------------------+
19 rows in set (0.00 sec)


//creation of table product
mysql> CREATE TABLE product (
    ->     product_id INT NOT NULL PRIMARY KEY,
    ->     product_name VARCHAR(50) NOT NULL,
    ->     category VARCHAR(50) NOT NULL,
    ->     sub_category VARCHAR(50) NOT NULL,
    ->     original_price INT NOT NULL,
    ->     selling_price INT NOT NULL,
    ->     stock INT NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | int         | NO   | PRI | NULL    |       |
| product_name   | varchar(50) | NO   |     | NULL    |       |
| category       | varchar(50) | NO   |     | NULL    |       |
| sub_category   | varchar(50) | NO   |     | NULL    |       |
| original_price | int         | NO   |     | NULL    |       |
| selling_price  | int         | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

//creation of table customer

mysql> CREATE TABLE customer (
    ->     customer_id INT PRIMARY KEY,
    ->     customer_name VARCHAR(20) NOT NULL,
    ->     email VARCHAR(20) NOT NULL,
    ->     address VARCHAR(100) NOT NULL,
    ->     city VARCHAR(20) NOT NULL,
    ->     phone_no VARCHAR(10) NOT NULL,
    ->     pin_code VARCHAR(15) NOT NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| customer_id   | int          | NO   | PRI | NULL    |       |
| customer_name | varchar(20)  | NO   |     | NULL    |       |
| email         | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| city          | varchar(20)  | NO   |     | NULL    |       |
| phone_no      | varchar(10)  | NO   |     | NULL    |       |
| pin_code      | varchar(15)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

//creation of table orders

mysql> CREATE TABLE orders (
    ->     order_id INT PRIMARY KEY,
    ->     product_id INT NOT NULL,
    ->     customer_id INT NOT NULL,
    ->     quantity INT NOT NULL,
    ->     total_price INT NOT NULL,
    ->     payment_mode VARCHAR(10),
    ->     order_date DATE NOT NULL,
    ->     order_status VARCHAR(10),
    ->     FOREIGN KEY (product_id) REFERENCES product(product_id),
    ->     FOREIGN KEY (customer_id) REFERENCES customer(customer_id));
Query OK, 0 rows affected (0.05 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| order_id     | int         | NO   | PRI | NULL    |       |
| product_id   | int         | NO   | MUL | NULL    |       |
| customer_id  | int         | NO   | MUL | NULL    |       |
| quantity     | int         | NO   |     | NULL    |       |
| total_price  | int         | NO   |     | NULL    |       |
| payment_mode | varchar(10) | YES  |     | NULL    |       |
| order_date   | date        | NO   |     | NULL    |       |
| order_status | varchar(10) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)



