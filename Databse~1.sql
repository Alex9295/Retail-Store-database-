
Table PRODUCTS dropped.


Table PRODUCTS created.


Error starting at line : 10 in command -
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    phone VARCHAR2(20) UNIQUE NOT NULL,
    address VARCHAR2(200) DEFAULT 'Not Provided'
)
Error report -
ORA-00955: name is already used by an existing object

https://docs.oracle.com/error-help/db/ora-00955/00955. 00000 -  "name is already used by an existing object"
*Cause:    An attempt was made to create a database object (such
           as a table, view, cluster, index, or synonym) that already
           existed. A user's database objects must have distinct names.
*Action:   Enter a unique name for the database object or modify
           or drop the existing object so it can be reused.

Error starting at line : 18 in command -
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date DATE DEFAULT SYSDATE,
    total_amount NUMBER CHECK (total_amount > 0),
    Remarks_if_any VARCHAR2(4000) DEFAULT 'No Remarks',
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)
Error report -
ORA-00955: name is already used by an existing object

https://docs.oracle.com/error-help/db/ora-00955/00955. 00000 -  "name is already used by an existing object"
*Cause:    An attempt was made to create a database object (such
           as a table, view, cluster, index, or synonym) that already
           existed. A user's database objects must have distinct names.
*Action:   Enter a unique name for the database object or modify
           or drop the existing object so it can be reused.

Table PRODUCTS dropped.


Table ORDERS dropped.


Table PRODUCTS created.


Error starting at line : 11 in command -
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    phone VARCHAR2(20) UNIQUE NOT NULL,
    address VARCHAR2(200) DEFAULT 'Not Provided'
)
Error report -
ORA-00955: name is already used by an existing object

https://docs.oracle.com/error-help/db/ora-00955/00955. 00000 -  "name is already used by an existing object"
*Cause:    An attempt was made to create a database object (such
           as a table, view, cluster, index, or synonym) that already
           existed. A user's database objects must have distinct names.
*Action:   Enter a unique name for the database object or modify
           or drop the existing object so it can be reused.

Table ORDERS created.


Table PRODUCTS dropped.


Table ORDERS dropped.


Table CUSTOMERS dropped.


Table PRODUCTS created.


Table CUSTOMERS created.


Table ORDERS created.

