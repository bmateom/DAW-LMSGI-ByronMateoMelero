DROP DATABASE IF EXISTS classicmodels_json;
CREATE DATABASE classicmodels_json;
USE classicmodels_json;

CREATE TABLE offices (
    office_id INT AUTO_INCREMENT PRIMARY KEY,
    data JSON
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    office_id INT,
    data JSON,
    FOREIGN KEY (office_id) references offices(office_id)
);

INSERT INTO offices (data) VALUES
('{
		"officeCode" : "1",
		"city" : "San Francisco",
		"phone" : "+1 650 219 4782",
		"addressLine1" : "100 Market Street",
		"addressLine2" : "Suite 300",
		"state" : "CA",
		"country" : "USA",
		"postalCode" : "94080",
		"territory" : "NA"
	}'),
	('{
		"officeCode" : "2",
		"city" : "Boston",
		"phone" : "+1 215 837 0825",
		"addressLine1" : "1550 Court Place",
		"addressLine2" : "Suite 102",
		"state" : "MA",
		"country" : "USA",
		"postalCode" : "02107",
		"territory" : "NA"
	}'),
	('{
		"officeCode" : "3",
		"city" : "NYC",
		"phone" : "+1 212 555 3000",
		"addressLine1" : "523 East 53rd Street",
		"addressLine2" : "apt. 5A",
		"state" : "NY",
		"country" : "USA",
		"postalCode" : "10022",
		"territory" : "NA"
	}'),
	('{
		"officeCode" : "4",
		"city" : "Paris",
		"phone" : "+33 14 723 4404",
		"addressLine1" : "43 Rue Jouffroy Dabbans",
		"addressLine2" : null,
		"state" : null,
		"country" : "France",
		"postalCode" : "75017",
		"territory" : "EMEA"
	}'),
	('{
		"officeCode" : "5",
		"city" : "Tokyo",
		"phone" : "+81 33 224 5000",
		"addressLine1" : "4-1 Kioicho",
		"addressLine2" : null,
		"state" : "Chiyoda-Ku",
		"country" : "Japan",
		"postalCode" : "102-8578",
		"territory" : "Japan"
	}'),
	('{
		"officeCode" : "6",
		"city" : "Sydney",
		"phone" : "+61 2 9264 2451",
		"addressLine1" : "5-11 Wentworth Avenue",
		"addressLine2" : "Floor #2",
		"state" : null,
		"country" : "Australia",
		"postalCode" : "NSW 2010",
		"territory" : "APAC"
	}'),
	('{
		"officeCode" : "7",
		"city" : "London",
		"phone" : "+44 20 7877 2041",
		"addressLine1" : "25 Old Broad Street",
		"addressLine2" : "Level 7",
		"state" : null,
		"country" : "UK",
		"postalCode" : "EC2N 1HN",
		"territory" : "EMEA"
	}');
    

INSERT INTO employees (office_id, data) VALUES
	(1,'{
		"employeeNumber" : 1002,
		"lastName" : "Murphy",
		"firstName" : "Diane",
		"extension" : "x5800",
		"email" : "dmurphy@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : null,
		"jobTitle" : "President"
	}'),
	(1,'{
		"employeeNumber" : 1056,
		"lastName" : "Patterson",
		"firstName" : "Mary",
		"extension" : "x4611",
		"email" : "mpatterso@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : 1002,
		"jobTitle" : "VP Sales"
	}'),
	(1,'{
		"employeeNumber" : 1076,
		"lastName" : "Firrelli",
		"firstName" : "Jeff",
		"extension" : "x9273",
		"email" : "jfirrelli@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : 1002,
		"jobTitle" : "VP Marketing"
	}'),
	(6,'{
		"employeeNumber" : 1088,
		"lastName" : "Patterson",
		"firstName" : "William",
		"extension" : "x4871",
		"email" : "wpatterson@classicmodelcars.com",
		"officeCode" : "6",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Manager (APAC)"
	}'),
	(4,'{
		"employeeNumber" : 1102,
		"lastName" : "Bondur",
		"firstName" : "Gerard",
		"extension" : "x5408",
		"email" : "gbondur@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1056,
		"jobTitle" : "Sale Manager (EMEA)"
	}'),
	(1,'{
		"employeeNumber" : 1165,
		"lastName" : "Jennings",
		"firstName" : "Leslie",
		"extension" : "x3291",
		"email" : "ljennings@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
	(1,'{
		"employeeNumber" : 1166,
		"lastName" : "Thompson",
		"firstName" : "Leslie",
		"extension" : "x4065",
		"email" : "lthompson@classicmodelcars.com",
		"officeCode" : "1",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
	(1,'{
		"employeeNumber" : 1188,
		"lastName" : "Firrelli",
		"firstName" : "Julie",
		"extension" : "x2173",
		"email" : "jfirrelli@classicmodelcars.com",
		"officeCode" : "2",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
	(1,'{
		"employeeNumber" : 1216,
		"lastName" : "Patterson",
		"firstName" : "Steve",
		"extension" : "x4334",
		"email" : "spatterson@classicmodelcars.com",
		"officeCode" : "2",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
	(3,'{
		"employeeNumber" : 1286,
		"lastName" : "Tseng",
		"firstName" : "Foon Yue",
		"extension" : "x2248",
		"email" : "ftseng@classicmodelcars.com",
		"officeCode" : "3",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
	(3,'{
		"employeeNumber" : 1323,
		"lastName" : "Vanauf",
		"firstName" : "George",
		"extension" : "x4102",
		"email" : "gvanauf@classicmodelcars.com",
		"officeCode" : "3",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
	(4,'{
		"employeeNumber" : 1337,
		"lastName" : "Bondur",
		"firstName" : "Loui",
		"extension" : "x6493",
		"email" : "lbondur@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
	(4,'{
		"employeeNumber" : 1370,
		"lastName" : "Hernandez",
		"firstName" : "Gerard",
		"extension" : "x2028",
		"email" : "ghernande@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
	(4,'{
		"employeeNumber" : 1401,
		"lastName" : "Castillo",
		"firstName" : "Pamela",
		"extension" : "x2759",
		"email" : "pcastillo@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
	(7,'{
		"employeeNumber" : 1501,
		"lastName" : "Bott",
		"firstName" : "Larry",
		"extension" : "x2311",
		"email" : "lbott@classicmodelcars.com",
		"officeCode" : "7",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
	(7,'{
		"employeeNumber" : 1504,
		"lastName" : "Jones",
		"firstName" : "Barry",
		"extension" : "x102",
		"email" : "bjones@classicmodelcars.com",
		"officeCode" : "7",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
	(6,'{
		"employeeNumber" : 1611,
		"lastName" : "Fixter",
		"firstName" : "Andy",
		"extension" : "x101",
		"email" : "afixter@classicmodelcars.com",
		"officeCode" : "6",
		"reportsTo" : 1088,
		"jobTitle" : "Sales Rep"
	}'),
	(6,'{
		"employeeNumber" : 1612,
		"lastName" : "Marsh",
		"firstName" : "Peter",
		"extension" : "x102",
		"email" : "pmarsh@classicmodelcars.com",
		"officeCode" : "6",
		"reportsTo" : 1088,
		"jobTitle" : "Sales Rep"
	}'),
	(6,'{
		"employeeNumber" : 1619,
		"lastName" : "King",
		"firstName" : "Tom",
		"extension" : "x103",
		"email" : "tking@classicmodelcars.com",
		"officeCode" : "6",
		"reportsTo" : 1088,
		"jobTitle" : "Sales Rep"
	}'),
	(5,'{
		"employeeNumber" : 1621,
		"lastName" : "Nishi",
		"firstName" : "Mami",
		"extension" : "x101",
		"email" : "mnishi@classicmodelcars.com",
		"officeCode" : "5",
		"reportsTo" : 1056,
		"jobTitle" : "Sales Rep"
	}'),
	(5,'{
		"employeeNumber" : 1625,
		"lastName" : "Kato",
		"firstName" : "Yoshimi",
		"extension" : "x102",
		"email" : "ykato@classicmodelcars.com",
		"officeCode" : "5",
		"reportsTo" : 1621,
		"jobTitle" : "Sales Rep"
	}'),
	(4,'{
		"employeeNumber" : 1702,
		"lastName" : "Gerard",
		"firstName" : "Martin",
		"extension" : "x2312",
		"email" : "mgerard@classicmodelcars.com",
		"officeCode" : "4",
		"reportsTo" : 1102,
		"jobTitle" : "Sales Rep"
	}'),
	(2,'{
		"employeeNumber" : 2003,
		"lastName" : "Taylor",
		"firstName" : "Alice",
		"extension" : "x125",
		"email" : "alice.taylor@classicmodels.com",
		"officeCode" : "2",
		"reportsTo" : 1002,
		"jobTitle" : "Sales Manager"
	}');
    
SELECT COUNT(*) AS total_offices FROM offices;
SELECT COUNT(*) AS total_employees FROM employees;