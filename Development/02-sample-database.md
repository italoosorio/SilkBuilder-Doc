# Sample Database

The sample applications on this documentation required the use of the tables *Person* and *Category*.

The table structure below is configured for the MSQL database server data types. You can modify these to other databases data types.

```sql
CREATE TABLE Person (
	personID int(11) NOT NULL AUTO_INCREMENT,
	name varchar(100) DEFAULT NULL,
	address varchar(250) DEFAULT NULL,
	phone varchar(20) DEFAULT NULL,
	email varchar(50) DEFAULT NULL,
	categoryID int(11) DEFAULT NULL,
	married int(11) DEFAULT '0',
	birthDate timestamp NULL DEFAULT NULL,
	monthlyIncome decimal(10,2) DEFAULT NULL,
	comments text,
	PRIMARY KEY (personID),
	KEY categoryID (categoryID)
);
```

```sql
CREATE TABLE Category (
	categoryID int(11) unsigned NOT NULL AUTO_INCREMENT,
	categoryName varchar(100) DEFAULT NULL,
	PRIMARY KEY (categoryID)
);
```

Click on this [link](sample-tables.sql) to download a MySQL dump file which you can use to create and populate these tables.

