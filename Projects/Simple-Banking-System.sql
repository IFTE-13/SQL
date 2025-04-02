-- 📌 Simple Banking System

-- 1️⃣ Create Tables
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    balance DECIMAL(15,2) DEFAULT 0,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    amount DECIMAL(15,2),
    transaction_type ENUM('DEPOSIT', 'WITHDRAWAL', 'TRANSFER'),
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

-- 2️⃣ Deposit Money
DELIMITER //
CREATE PROCEDURE Deposit(IN acc_id INT, IN amount DECIMAL(15,2))
BEGIN
    UPDATE Accounts SET balance = balance + amount WHERE account_id = acc_id;
    INSERT INTO Transactions (account_id, amount, transaction_type) 
    VALUES (acc_id, amount, 'DEPOSIT');
END //
DELIMITER ;

-- 3️⃣ Withdraw Money
DELIMITER //
CREATE PROCEDURE Withdraw(IN acc_id INT, IN amount DECIMAL(15,2))
BEGIN
    IF (SELECT balance FROM Accounts WHERE account_id = acc_id) >= amount THEN
        UPDATE Accounts SET balance = balance - amount WHERE account_id = acc_id;
        INSERT INTO Transactions (account_id, amount, transaction_type) 
        VALUES (acc_id, amount, 'WITHDRAWAL');
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient Balance';
    END IF;
END //
DELIMITER ;

-- 4️⃣ Transfer Money Between Accounts
DELIMITER //
CREATE PROCEDURE Transfer(IN from_acc INT, IN to_acc INT, IN amount DECIMAL(15,2))
BEGIN
    IF (SELECT balance FROM Accounts WHERE account_id = from_acc) >= amount THEN
        UPDATE Accounts SET balance = balance - amount WHERE account_id = from_acc;
        UPDATE Accounts SET balance = balance + amount WHERE account_id = to_acc;
        INSERT INTO Transactions (account_id, amount, transaction_type) 
        VALUES (from_acc, amount, 'TRANSFER'), (to_acc, amount, 'DEPOSIT');
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient Balance';
    END IF;
END //
DELIMITER ;

-- 🚀 More functionalities like account creation and transaction history can be added!
