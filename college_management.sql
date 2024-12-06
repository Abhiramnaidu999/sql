CREATE DATABASE college_management;

USE college_management;

CREATE TABLE course (courseId INT PRIMARY KEY AUTO_INCREMENT ,cName VARCHAR(255),Fees INT);

INSERT INTO course(courseId,cName,Fees) VALUES (101,'CSE',200000);
INSERT INTO course(courseId,cName,Fees) VALUES (102,'ECE',150000);
INSERT INTO course(courseId,cName,Fees) VALUES (103,'Mech',100000);

SELECT*FROM course

CREATE TABLE STUDENT (
    rollno INT PRIMARY KEY AUTO_INCREMENT ,
    fname VARCHAR(50),
    lname VARCHAR(55),
    Phone VARCHAR(11) UNIQUE,
    cId INT,
    email VARCHAR(255) UNIQUE,
    FOREIGN KEY (cId) REFERENCES Course(courseId));
	 
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('bhavani','nallam','8667532199',101,'bhavani.nallam@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('Rohit','Pedapalli','9553693515',101,'rohit.pedapalli@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('varma','indukuri','9490561777',103,'varma.indukuri@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('honey','nalla','7665478998',102,'honey.nalla@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('teja','reddy','8997534215',102,'teja.reddy@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('chandu','mekapotula','9976456780',101,'chandu.mekapotula@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('yaswanth','naidu','6200589978',101,'yaswanth.naidu@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('abbhiram','naidu','9399378999',101,'abhiram.naidu@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('kinshuk','agarwal','8667532516',102,'kinshuk.agarwal@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('aditya','reddy','8667532120',103,'aditya.reddy@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('chaitanya','lingola','8667537564',101,'chaitanya.lingola@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('sai','varma','8667535643',102,'sai.varma@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('pawan','kalyan','8667788999',101,'pawan.kalyan@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('allu','arjun','8667532151',103,'allu.arjun@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('ballaya','babu','8667532152',101,'ballaya.babu@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('prabhas','roy','8667532142',101,'prabhas.roy@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('siddarth','nandan','8667532143',103,'siddarth.nandan@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('mahesh','babu','8667532159',101,'mahesh.babu@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('kiran','abbavaram','8667532156',101,'kiran.abbavaram@gitam.in');
INSERT INTO student(fname,lname,phone,cId,email) VALUES ('prajna','sri','8667532186',102,'prajna.sri@gitam.in');

SELECT * FROM student;

CREATE TABLE FACULTY (
    fid INT PRIMARY KEY AUTO_INCREMENT ,
    fname VARCHAR(50),
    designation VARCHAR(55),
    qualification VARCHAR(51),
    phoneNo VARCHAR(11)unique,
    cid INT ,
    FOREIGN KEY (cId) REFERENCES Course(courseId));

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('rajsekhar', 'professor','M-TECH','7896543210', 101);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('master', 'professor','b-TECH','7896543211', 101);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('ravi', 'professor','M-TECH','7896543212', 101);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('sekhar', 'professor','MBA','7896543213', 102);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('pavan', 'professor','b-TECH','7896543214', 101);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('Nithin', 'professor','MCA','7896543215', 103);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('chanduu', 'professor','M-TECH','7896543216', 102);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('satyam', 'Seniorprofessor','MS','7896543217', 101);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('harshit', 'junior professor','B-TECH','7896543218', 103);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('karthik', 'HEAD','M-TECH','7896543219', 101);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('Rohit', 'professor','MCA','7896543220', 101);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('mani', 'professor','M-TECH','7896543221', 102);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('siddarth', 'professor','MBA','7896543222', 101);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('manikantha', 'professor','B-TECH','7896543223', 103);

INSERT INTO FACULTY(fname, designation, qualification, phoneNo, cid) 
VALUES ('nikhil', 'professor','M-TECH','7896543224', 101);

SELECT * FROM FACULTY


CREATE TABLE book (
    Bid INT PRIMARY KEY AUTO_INCREMENT ,
    Bname VARCHAR(50) UNIQUE ,
    Author VARCHAR(55),
    Publisher VARCHAR(51),
    price DECIMAL(64, 10),
    qty INT);
    

INSERT INTO book( bname, author, publisher, price, qty) 
VALUES ('The Great Adventure', 'John Doe', 'Adventure Press', 10.99, 10);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Learning SQL', 'Jane Smith', 'Tech Books', 29.99, 5);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Mystery of the Lost City', 'Alice Johnson', 'Mystery Publishers', 14.99, 7);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Introduction to Algorithms', 'Robert Brown', 'Academic Press', 39.99, 15);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Science of Cooking', 'Emily White', 'Culinary Books', 24.99, 8);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('History of the World', 'Michael Green', 'History Publishers', 34.99, 6);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Art of War', 'Sun Tzu', 'Classic Press', 12.99, 20);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Programming Basics', 'Sarah Wilson', 'Tech Press', 49.99, 3);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Fantasy Realm', 'Brian King', 'Fantasy House', 22.99, 9);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Understanding Psychology', 'Laura Lee', 'Mind Books', 27.99, 12);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('JavaScript Essentials', 'David Clark', 'Web Tech', 25.99, 4);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Data Science Handbook', 'James Taylor', 'Data Press', 45.99, 2);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Joy of Painting', 'Bob Ross', 'Art Books', 16.99, 14);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Gardening 101', 'Lisa Black', 'Garden Press', 15.99, 11);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Space Exploration', 'Neil Armstrong', 'Space Books', 29.99, 18);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Fitness for Life', 'Samantha Adams', 'Health Publishers', 19.99, 5);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Cooking Made Easy', 'Gordon Ramsay', 'Culinary Press', 29.99, 6);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Mystery Novel', 'Agatha Christie', 'Mystery House', 17.99, 10);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Modern Physics', 'Albert Einstein', 'Science Press', 39.99, 4);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Fictional Universe', 'George R.R. Martin', 'Fantasy Press', 34.99, 3);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Digital Marketing Guide', 'Rachel Green', 'Business Books', 21.99, 12);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Classic Literature', 'F. Scott Fitzgerald', 'Classic House', 18.99, 10);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES('The Power of Habit', 'Charles Duhigg', 'Self-Help Press', 23.99, 8);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Economics 101', 'Thomas Sowell', 'Economics Publishers', 26.99, 7);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Complete Guide to Yoga', 'Bikram Choudhury', 'Health Press', 32.99, 10);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Secrets of the Ocean', 'Jacques Cousteau', 'Nature Books', 28.99, 5);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Building Web Applications', 'Ethan Brown', 'Tech Press', 30.99, 4);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The History of Time', 'Stephen Hawking', 'Science Books', 15.99, 12);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Essential Oils for Beginners', 'Sarah Lee', 'Wellness Press', 19.99, 9);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Minimalist Lifestyle', 'Joshua Becker', 'Self-Help Publishers', 22.99, 8);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Travel the World', 'Rick Steves', 'Travel Press', 27.99, 11);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Baking Made Simple', 'Mary Berry', 'Culinary Books', 24.99, 6);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Philosophy of Happiness', 'Aristotle', 'Philosophy Press', 29.99, 3);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The World Atlas', 'National Geographic', 'Geography Press', 39.99, 10);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Animal Behavior', 'John H. Marzluff', 'Nature Publishers', 19.99, 12);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Artificial Intelligence Basics', 'Stuart Russell', 'Tech Press', 34.99, 5);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Art of Happiness', 'Dalai Lama', 'Spiritual Books', 18.99, 14);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Nutrition for Dummies', 'Ruth Kava', 'Health Press', 15.99, 7);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Complete Guide to Photography', 'Ansel Adams', 'Art Publishers', 26.99, 6);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Fundamentals of Music', 'Beethoven', 'Music House', 21.99, 9);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Story of Civilization', 'Will and Ariel Durant', 'History Books', 34.99, 3);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Anatomy of Story', 'John Truby', 'Writing Press', 29.99, 4);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Understanding Cryptography', 'Christof Paar', 'Tech Publishers', 39.99, 10);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Science of Sleep', 'Matthew Walker', 'Health Books', 22.99, 8);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('Designing Data-Intensive Applications', 'Martin Kleppmann', 'Tech Press', 49.99, 2);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('A Brief History of Time', 'Stephen Hawking', 'Science Books', 28.99, 15);

INSERT INTO book( bname, author, publisher, price, qty)
VALUES ('The Tao of Pooh', 'Benjamin Hoff', 'Philosophy Press', 19.99, 5);

INSERT INTO book (bname, author, publisher, price, qty) 
VALUES ('The Alchemist', 'Paulo Coelho', 'HarperOne', 16.99, 10);

INSERT INTO book (bname, author, publisher, price, qty) 
VALUES('1984', 'George Orwell', 'Secker & Warburg', 14.99, 8);

INSERT INTO book (bname, author, publisher, price, qty) 
VALUES('To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', 18.99, 7);

INSERT INTO book (bname, author, publisher, price, qty) 
VALUES('The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 15.99, 6);

INSERT INTO book (bname, author, publisher, price, qty) 
VALUES('Brave New World', 'Aldous Huxley', 'Chatto & Windus', 17.99, 9);

SELECT * FROM book


CREATE TABLE library (
    Lid INT PRIMARY KEY AUTO_INCREMENT ,
    BookId INT ,
    IssueDate VARCHAR(55),
    Returndate VARCHAR(51),
    rollNo INT ,
    FOREIGN KEY (BookId) REFERENCES book(Bid),
    FOREIGN KEY (rollNo) REFERENCES student(rollNo));
    
    
SELECT * FROM student

INSERT INTO library (BookId, IssueDate, ReturnDate, rollNo) 
VALUES (1, '2024-01-01', '2024-01-15', 19);

INSERT INTO library (BookId, IssueDate, ReturnDate, rollNo)  
values(1, '2024-01-05', '2024-01-20', 15);

INSERT INTO library (BookId, IssueDate, ReturnDate, rollNo)VALUES 
(1, '2024-01-10', '2024-01-25', 7),
(1, '2024-01-12', '2024-01-26', 5),
(1, '2024-01-15', '2024-01-30', 10);

INSERT INTO library (BookId, IssueDate, ReturnDate, rollNo)VALUES 
(2, '2024-02-15', '2024-03-30', 1),
(2, '2024-02-17', '2024-03-12', 8),
(2, '2024-02-19', '2024-03-13', 6),
(2, '2024-02-12', '2024-02-15', 5),
(2, '2024-02-22', '2024-03-09', 9);

INSERT INTO library (BookId, IssueDate, ReturnDate, rollNo)VALUES 
(3, '2024-02-19', '2024-05-7', 2),
(3, '2024-04-13', '2024-05-3', 4),
(3, '2024-04-22', '2024-05-22', 1),
(3, '2024-04-23', '2024-06-21', 8),
(3, '2024-03-21', '2024-03-22', 6);

INSERT INTO library (BookId, IssueDate, ReturnDate, rollNo)VALUES 
(4, '2024-06-19', '2024-07-7', 12),
(4, '2024-06-13', '2024-07-3', 14),
(4, '2024-06-22', '2024-07-22', 11),
(4, '2024-06-23', '2024-07-21', 18),
(4, '2024-06-21', '2024-07-22', 16);

INSERT INTO library (BookId, IssueDate, ReturnDate, rollNo) VALUES 
(1, '2024-01-01', '2024-01-15', 1),
(2, '2024-01-02', '2024-01-16', 2),
(3, '2024-01-03', '2024-01-17', 3),
(4, '2024-01-04', '2024-01-18', 4),
(5, '2024-01-05', '2024-01-19', 5),
(6, '2024-01-06', '2024-01-20', 6),
(7, '2024-01-07', '2024-01-21', 7),
(8, '2024-01-08', '2024-01-22', 8),
(9, '2024-01-09', '2024-01-23', 9),
(10, '2024-01-10', '2024-01-24', 10);


INSERT INTO library (BookId, IssueDate, ReturnDate, rollNo) VALUES 
(1, '2024-02-20', '2024-03-05', 11),
(2, '2024-02-21', '2024-03-06', 12),
(3, '2024-02-22', '2024-03-07', 13),
(4, '2024-02-23', '2024-03-08', 14),
(5, '2024-02-24', '2024-03-09', 15),
(6, '2024-02-25', '2024-03-10', 16),
(7, '2024-02-26', '2024-03-11', 17),
(8, '2024-02-27', '2024-03-12', 18),
(9, '2024-02-28', '2024-03-13', 19),
(10, '2024-02-29', '2024-03-14', 20);

INSERT INTO library (BookId, IssueDate, ReturnDate, rollNo) VALUES 
(28, '2024-02-27', '2024-03-12', 18),
(39, '2024-02-28', '2024-03-13', 19),
(19, '2024-02-29', '2024-03-14', 20);

SELECT * FROM library


SELECT 
    b.Bid,
    b.Bname,
    b.Author,
    l.IssueDate,
    l.ReturnDate,
    l.rollNo
FROM 
    book b
JOIN 
    library l ON b.Bid = l.BookId;
    
    




