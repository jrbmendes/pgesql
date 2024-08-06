
-- Create database
CREATE DATABASE ClientDB;
GO

-- Use the database
USE ClientDB;
GO

-- Create table
CREATE TABLE Clients (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100)
);
GO

-- Insert data
INSERT INTO Clients (Name, Email)
VALUES
    ('John Doe', 'john.doe@example.com'),
    ('Jane Smith', 'jane.smith@example.com'),
    ('Alice Johnson', 'alice.johnson@example.com');

