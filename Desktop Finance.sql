USE finance;

CREATE TABLE Accounts(
	AccountID int AUTO_INCREMENT,
    AccountName varchar(25),
    AccountNumber int,
    PRIMARY KEY (AccountID)
);

CREATE TABLE Transactions(
	TransactionID int AUTO_INCREMENT,
    TransactionDate date,
    AccountID int,
    Payee varchar(25),
    SubcategoryID int,
    Notes varchar(50),
    Dollars double,
    PRIMARY KEY (TransactionID), 
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID), FOREIGN KEY (SubcategoryID) REFERENCES Subcategories(SubcategoryID)
);

CREATE TABLE Categories(
	CategoryID int AUTO_INCREMENT,
    CategoryName varchar(25),
    PRIMARY KEY (CategoryID)
);
INSERT INTO Categories (CategoryName) VALUES
	('Food'),
    ('Entertainment'),
    ('Car'),
    ('Income');

CREATE TABLE Subcategories(
	SubcategoryID int AUTO_INCREMENT,
    CategoryID int,
    SubcategoryName varchar(25),
    PRIMARY KEY (SubcategoryID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
INSERT INTO Subcategories (CategoryID, SubcategoryName) VALUES
	(1, 'Restaurants'),
    (1, 'Grocieries'),
    (1, 'Other'),
    (2, 'Movies'),
    (3, 'Gas'),
    (3, 'Maintenance'),
    (3, 'Other'),
    (4, 'Job'),
    (4, 'Opening Balance');
