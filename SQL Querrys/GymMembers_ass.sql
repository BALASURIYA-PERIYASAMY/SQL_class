USE balasuriya_db;

CREATE TABLE GymMembers (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    BadgeNumber VARCHAR(20) UNIQUE,
    Age INT CHECK (Age >= 16),
    Gender CHAR(1) CHECK (Gender IN ('M', 'F', 'O')),
    MembershipType VARCHAR(20) DEFAULT 'Standard',
    MonthlyFee DECIMAL(10, 2) CHECK (MonthlyFee > 0),
    HasPaid BOOLEAN DEFAULT FALSE,
    JoinDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

DESC GymMembers;

INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MembershipType, MonthlyFee, HasPaid, JoinDate)
VALUES
('John Doe', 'john.doe@email.com', 'BADGE-1001', 25, 'M', 'Premium', 80.00, TRUE, '2023-01-10'),
('Jane Smith', 'jane.smith@email.com', 'BADGE-1002', 30, 'F', 'Standard', 50.00, TRUE, '2023-01-12'),
('Michael Brown', 'michael.b@email.com', 'BADGE-1003', 45, 'M', 'Standard', 50.00, FALSE, '2023-01-15'),
('Emily Davis', 'emily.d@email.com', 'BADGE-1004', 22, 'F', 'Premium', 80.00, TRUE, '2023-01-18'),
('Chris Wilson', 'chris.w@email.com', 'BADGE-1005', 28, 'M', 'VIP', 120.00, TRUE, '2023-01-20'),
('Sarah Taylor', 'sarah.t@email.com', 'BADGE-1006', 35, 'F', 'Standard', 50.00, FALSE, '2023-01-22'),
('David Anderson', 'david.a@email.com', 'BADGE-1007', 40, 'M', 'VIP', 120.00, TRUE, '2023-01-25'),
('Laura Thomas', 'laura.t@email.com', 'BADGE-1008', 27, 'F', 'Standard', 50.00, TRUE, '2023-01-28'),
('Kevin Martinez', 'kevin.m@email.com', 'BADGE-1009', 33, 'M', 'Premium', 80.00, FALSE, '2023-02-01'),
('Anna White', 'anna.w@email.com', 'BADGE-1010', 29, 'F', 'Standard', 50.00, TRUE, '2023-02-05'),
('Brian Harris', 'brian.h@email.com', 'BADGE-1011', 50, 'M', 'Standard', 50.00, TRUE, '2023-02-10'),
('Megan Clark', 'megan.c@email.com', 'BADGE-1012', 24, 'F', 'Premium', 80.00, TRUE, '2023-02-12'),
('Jason Lewis', 'jason.l@email.com', 'BADGE-1013', 31, 'M', 'Standard', 50.00, FALSE, '2023-02-15'),
('Rachel Walker', 'rachel.w@email.com', 'BADGE-1014', 26, 'F', 'VIP', 120.00, TRUE, '2023-02-18'),
('Steven Hall', 'steven.h@email.com', 'BADGE-1015', 38, 'M', 'Premium', 80.00, TRUE, '2023-02-20'),
('Amanda Allen', 'amanda.a@email.com', 'BADGE-1016', 23, 'F', 'Standard', 50.00, TRUE, '2023-02-22'),
('Eric Young', 'eric.y@email.com', 'BADGE-1017', 42, 'M', 'Standard', 50.00, FALSE, '2023-02-25'),
('Stephanie King', 'steph.k@email.com', 'BADGE-1018', 34, 'F', 'Premium', 80.00, TRUE, '2023-03-01'),
('Patrick Scott', 'patrick.s@email.com', 'BADGE-1019', 29, 'M', 'VIP', 120.00, FALSE, '2023-03-05'),
('Jessica Green', 'jessica.g@email.com', 'BADGE-1020', 27, 'F', 'Standard', 50.00, TRUE, '2023-03-10');
SELECT * FROM GymMembers;









