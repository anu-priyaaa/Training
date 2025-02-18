-- show databases;
create database LibDB;
use LibDB;
CREATE TABLE Book
(
  Book_ID INT NOT NULL,
  Title INT NOT NULL,
  Author_ INT NOT NULL,
  PRIMARY KEY (Book_ID)
);

CREATE TABLE Member
(
  Member_ID INT NOT NULL,
  Name INT NOT NULL,
  Email INT NOT NULL,
  address INT NOT NULL,
  PRIMARY KEY (Member_ID)
);

CREATE TABLE Loan
(
  Loan_ID INT NOT NULL,
  ReturnDate INT NOT NULL,
  LoanDate INT NOT NULL,
  Member_ID INT NOT NULL,
  Book_ID INT NOT NULL,
  PRIMARY KEY (Loan_ID),
  FOREIGN KEY (Member_ID) REFERENCES Member(Member_ID),
  FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID)
);