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
    
    SELECT * FROM AddressBook
    WHERE City = 'new delhi';
    
    ALTER TABLE AddressBook
    ADD type VARCHAR(15);
    SELECT * FROM AddressBook;
    UPDATE AddressBook SET type = 'Self'  WHERE First_Name ='priti';
    UPDATE AddressBook SET type = 'Friend' WHERE First_Name ='usha';
    SELECT * FROM AddressBook;
    
    SELECT City,COUNT(City) FROM AddressBook GROUP BY City;
    SELECT State,COUNT(State) FROM AddressBook GROUP BY State;
    
    
     INSERT INTO AddressBook(First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email) VALUES
    ('Aditya', 'bharti', 'patna', 'patna', 'up', '530066','6789563845', 'adi@gmail.com'),
	('sanket', 'Sisirker', 'Dharavi', 'Mumbai', 'Maharashtra', '530044','8907631888', 'sanket@gmail.com');
    
    SELECT *FROM AddressBook;
    SELECT *FROM AddressBook WHERE city ='Mumbai'ORDER BY First_Name ASC;
    select *From AddressBook;
    
    ALTER TABLE AddressBook ADD type VARCHAR(15) DEFAULT 'Friend';
    ALTER TABLE AddressBook ADD name VARCHAR(15);
    select*From AddressBook;
    SELECT COUNT(type) FROM addressbook;
    
    INSERT INTO AddressBook(First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email,type,name) VALUES
     ('pratiik', 'Singh', 'panwel', 'Mumbai', 'Maharashtra', '530044','9426625688', 'sh@mln.com', 'Family',NULL);
     select *From AddressBook;