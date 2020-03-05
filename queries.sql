-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productname, categoryname FROM products
join categories on products.categoryid = categories.categoryid;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT orderid, shippername FROM orders
join shippers on shippers.shipperid = orders.shipperid
WHERE orderdate < "2012-09-08";

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT productname, quantity FROM orderdetails
join products on orderdetails.productid = products.productid
WHERE orderid = 10251 ORDER BY productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT orderid, customername, lastname FROM orders
join customers on orders.customerid = customers.customerid
join employees on orders.employeeid = employees.employeeid;
