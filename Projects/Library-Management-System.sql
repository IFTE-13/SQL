-- 📌 Library Management System Database Schema

-- 1️⃣ Create Members Table
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    address TEXT,
    membership_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2️⃣ Create Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    publication_year INT,
    stock_quantity INT NOT NULL DEFAULT 0
);

-- 3️⃣ Create Borrowing Transactions Table
CREATE TABLE Borrowings (
    borrowing_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    borrow_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    return_date DATE,
    status ENUM('BORROWED', 'RETURNED') DEFAULT 'BORROWED',
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- 4️⃣ Create a Table for Late Returns and Fines
CREATE TABLE Fines (
    fine_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    amount DECIMAL(10,2) NOT NULL,
    paid BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

-- 5️⃣ Create an Index for Faster Searches on Books
CREATE INDEX idx_book_title ON Books(title);

-- 🚀 More features like book reservations, reviews, and librarian management can be added!