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
     DESCRIBE AddressBook;
     INSERT INTO AddressBook(First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email) VALUES
     ('priti','ghadege','kr','new delhi','delhi','110044','83685677788','priti@gmail.com'),
    ('usha','ahirwar','rohini','new delhi','delhi','1011010','37437845678','usha@gmail.com');
    select*from AddressBook;