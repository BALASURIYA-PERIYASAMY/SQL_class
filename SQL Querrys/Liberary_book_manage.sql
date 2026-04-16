USE balasuriya_db;

CREATE TABLE BookIssue (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    book_title VARCHAR(150) NOT NULL,
    student_name VARCHAR(100) NOT NULL,
    roll_number VARCHAR(20) UNIQUE NOT NULL,
    issue_date DATE NOT NULL,
    return_date DATE,
    fine_amount DECIMAL(6,2) DEFAULT 0 CHECK (fine_amount >= 0),
    book_category VARCHAR(50) NOT NULL,
    issued_by VARCHAR(100) NOT NULL,
    status VARCHAR(20) DEFAULT 'Issued' CHECK (status IN ('Issued', 'Submitted'))
);

DESC BookIssue;

#with arguments

INSERT INTO BookIssue (book_title, student_name, roll_number, issue_date, book_category, issued_by, status) VALUES 
('Python Basics', 'Arun Kumar', '62252201', '2026-01-10', 'Programming', 'Librarian', 'Issued'),
('DBMS Concepts', 'Karthik Raj', '62252202', '2026-01-11', 'Database', 'Librarian', 'Submitted'),
('Java Guide', 'Suresh Kumar', '62252203', '2026-01-12', 'Programming', 'Librarian', 'Issued'),
('Operating System', 'Vignesh Kumar', '62252206', '2026-01-15', 'System', 'Librarian', 'Issued'),
('Data Structures', 'Ramesh Kumar', '62252208', '2026-01-17', 'Programming', 'Librarian', 'Submitted'),
('Artificial Intelligence', 'Dinesh Kumar', '62252209', '2026-01-18', 'AI', 'Librarian', 'Issued'),
('Cloud Computing', 'Naveen Kumar', '62252211', '2026-01-20', 'Cloud', 'Librarian', 'Submitted'),
('Cyber Security', 'Balaji Kumar', '62252212', '2026-01-21', 'Security', 'Librarian', 'Issued'),
('Mobile App Dev', 'Ajith Kumar', '62252214', '2026-01-23', 'Mobile', 'Librarian', 'Submitted'),
('Ethical Hacking', 'Kavin Kumar', '62252218', '2026-01-27', 'Security', 'Librarian', 'Issued');

#without Aruments

INSERT INTO BookIssue VALUES
(NULL, 'Python Programming', 'Arun Prakash', '62252221', '2026-01-01', NULL, 0, 'Programming', 'Librarian', 'Issued'),
(NULL, 'Database Systems', 'Karthikeyan', '62252222', '2026-01-02', NULL, 0, 'Database', 'Librarian', 'Issued'),
(NULL, 'Java Fundamentals', 'Sathish Kumar', '62252223', '2026-01-03', '2026-01-15', 10, 'Programming', 'Librarian', 'Submitted'),
(NULL, 'Web Technologies', 'Praveen Raj', '62252224', '2026-01-04', NULL, 0, 'Web', 'Librarian', 'Issued'),
(NULL, 'Operating Systems', 'Vigneshwaran', '62252225', '2026-01-05', '2026-01-18', 20, 'System', 'Librarian', 'Submitted'),
(NULL, 'Computer Networks', 'Santhosh Raj', '62252226', '2026-01-06', NULL, 0, 'Networking', 'Librarian', 'Issued'),
(NULL, 'Artificial Intelligence', 'Dinesh Prabhu', '62252227', '2026-01-07', NULL, 0, 'AI', 'Librarian', 'Issued'),
(NULL, 'Machine Learning Basics', 'Lokeshwaran', '62252228', '2026-01-08', '2026-01-22', 15, 'AI', 'Librarian', 'Submitted'),
(NULL, 'Cyber Law', 'Balaji Nathan', '62252229', '2026-01-09', NULL, 0, 'Security', 'Librarian', 'Issued'),
(NULL, 'Cloud Architecture', 'Naveen Prakash', '62252230', '2026-01-10', '2026-01-25', 25, 'Cloud', 'Librarian', 'Submitted');
