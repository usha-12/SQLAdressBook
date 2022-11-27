CREATE DATABASE AddressBookService1;
USE AddressBookService1;
select database();
CREATE TABLE AddressBook(Id INT unsigned NOT NULL AUTO_INCREMENT,
     First_Name VARCHAR(15) NOT NULL,
     Last_Name VARCHAR(15) NOT NULL,
     Address VARCHAR(150) NOT NULL,
     City VARCHAR(15) NOT NULL,
     State VARCHAR(15) NOT NULL,
     Zip BIGINT NOT NULL,
     Phone_Number BIGINT NOT NULL,
	Email VARCHAR(150) NOT NULL,
     PRIMARY KEY(Id)
     );