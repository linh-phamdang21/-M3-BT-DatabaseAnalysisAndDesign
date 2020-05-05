CREATE TABLE customers(
	customerNumber int NOT NULL,
	customerName varchar(50) NOT NULL,
	contactLastName varchar(50) NOT NULL,
	contactFirstName varchar(50) NOT NULL,
	phone varchar(50) NOT NULL,
	addressLine1 varchar(50) NOT NULL,
	addressLine2 varchar(50) NULL,
	city varchar(50) NOT NULL,
	state varchar(50) NOT NULL,
	postalCode varchar(15) NOT NULL,
	country varchar(50) NOT NULL,
	creditLimit double null
);

CREATE TABLE orders(
	orderNumber int NOT NULL,
	orderDate date NOT NULL,
	requiredDate date NOT NULL,
	shippedDate date NULL,
	status varchar(15) NOT NULL,
	comment blob NULL,
	quantityOrdered int NOT NULL,
	priceEach double NOT null
);

CREATE TABLE payments(
	customerNumber int NOT NULL,
	checkNumber varchar(50) NOT NULL,
	paymentDate date NOT NULL,
	amount double NOT null
);

CREATE TABLE products(
	productCode varchar(15) NOT NULL,
	productName varchar(70) NOT NULL,
	productScale varchar(10) NOT NULL,
	productVendor varchar(50) NOT NULL,
	productDescription blob NOT NULL,
	quantityInStock int NOT NULL,
	buyPrice double NOT NULL,
	msrp double NOT null
);

CREATE TABLE productlines(
	productLine varchar(50) NOT NULL,
	textDescription blob NOT NULL,
	image varchar(100) NULL
);

CREATE TABLE employees(
	employeeNumber int NOT NULL,
	lastName varchar(50) NOT NULL,
	firstName varchar(50) NOT NULL,
	email varchar(100) NOT NULL,
	jobTitle varchar(50) NOT NULL
);

CREATE TABLE offices(
	officeCode varchar(10) NOT NULL,
	city varchar(50) NOT NULL,
	phone varchar(50) NOT NULL,
	addressLine1 varchar(50) NOT NULL,
	addressLine2 varchar(50) NULL,
	state varchar(50) NOT NULL,
	country varchar(50) NOT NULL,
	postalCode varchar(15) NOT NULL
);

alter table customers add primary key(customerNumber);
