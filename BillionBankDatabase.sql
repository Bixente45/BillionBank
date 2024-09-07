CREATE DATABASE BillionBankTransaction

CREATE TABLE SecurityQuestions
(
	SecurityQuestionId int PRIMARY KEY IDENTITY(1,1),
	SecurityQuestionName VARCHAR(50)
)

INSERT INTO SecurityQuestions VALUES('What is the name of your first pet?')
INSERT INTO SecurityQuestions VALUES('What is your middle name?')
INSERT INTO SecurityQuestions VALUES('How many siblings do you have?')

CREATE TABLE Account
(
	AccountId int PRIMARY KEY IDENTITY(1,1),
	AccountNumber VARCHAR(50),
	AccountType VARCHAR(20),
	UserName VARCHAR(30),
	Gender VARCHAR(10),
	Email VARCHAR(50),
	Address VARCHAR(MAX),
	SecurityQuestionId int FOREIGN KEY REFERENCES SecurityQuestions(SecurityQuestionId),
	Answer VARCHAR(30),
	Amount int,
	Password VARCHAR(30)
)

CREATE TABLE [Transaction]
(
	TransactionId int PRIMARY KEY IDENTITY(1,1),
	SenderAccountId int FOREIGN KEY REFERENCES Account(AccountId),
	ReceiverAccountId int FOREIGN KEY REFERENCES Account(AccountId),
	MoblieNo VARCHAR(20),
	Amount int,
	TransactionType VARCHAR(10),
	Remarks VARCHAR(30)

)

