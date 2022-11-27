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
     
	CREATE TABLE user_details(
    user_id INT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL);
    
	DESC user_details;
    
	CREATE TABLE location(
    user_id INT PRIMARY KEY,
    address VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip VARCHAR(10) NOT NULL);
    
    ALTER TABLE location
	ADD FOREIGN KEY(user_id) REFERENCES user_details(user_id);
	DESC location;
    
    CREATE TABLE contact(
	user_id INT,
	phone VARCHAR(15),
    email VARCHAR(30),
    FOREIGN KEY(user_id) REFERENCES user_details(user_id));
    DESC contact;
    CREATE TABLE contact_type(
    type_id INT,
    type_of_contact VARCHAR(20));
    ALTER TABLE contact_type
    ADD PRIMARY KEY(type_id);
    DESC contact_type;
    
    CREATE TABLE user_contact_type_link(
     user_id INT,
     type_id INT,
	FOREIGN KEY(user_id) REFERENCES user_details(user_id),
    FOREIGN KEY(type_id) REFERENCES contact_type(type_id));
	DESC user_contact_type_link;
    INSERT INTO user_details VALUES
    (1, 'Bill', 'Smith'),
	(2, 'Terisa', 'Brown'),(3, 'Charlie', 'Williams');
    Select * FROM user_details;
    
    INSERT INTO location VALUES
     (1,'Street 1', 'City 1', 'California', '123456'),
    (2,'Street 2', 'City 2','California', '123457'),
     (3,'Street 3', 'City 3', 'Florida', '223457');
     
	select * from location;
    INSERT INTO contact VALUES
     (1,'9876543210', 'Bill@email.com'),
    (2,'9876543222', 'Terisa@email.com'),
    (3,'8876543210', 'Charlie@email.com');
     SELECT * from contact;
     INSERT INTO contact_type VALUES
		(101,'Friend'),
		(102,'Family');
        SELECT * FROM contact_type;
        INSERT INTO user_contact_type_link VALUES
		(1,101),
		(1,102),
		(2,101),
		(3,102);
        SELECT *FROM user_contact_type_link ;
        SELECT u.first_name,u.last_name,l.state
		from user_details u JOIN location l
		where u.user_id = l.user_id
		AND l.state = 'California';
        SELECT city,COUNT(City) FROM LOCATION;
        
	SELECT u.first_name,u.last_name,l.city
     from user_details u JOIN location l
     where u.user_id = l.user_id
     AND l.city = 'City 1'
    ORDER BY u.first_name;
    
    SELECT u.first_name,u.last_name,l.state
     from user_details u JOIN location l
     where u.user_id = 2.user_id
     AND l.state = 'California'
     ORDER BY u.first_name;
     
     SELECT COUNT(u.user_id) AS number_of_contacts,t.type_of_contact
     FROM user_details u JOIN contact_type t JOIN user_contact_type_link l
     WHERE u.user_id = l.user_id
     AND t.type_id = l.type_id
     GROUP BY(t.type_of_contact);
