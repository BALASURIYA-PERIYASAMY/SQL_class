#1. Duplicate Email (Unique Constraint)
#Trying to use an email that already exists.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Clone User', 'john.doe@email.com', 'BADGE-9000', 30, 'M', 50.00);

#2. Duplicate Primary Key
#Manually inserting an ID 1 that was already auto-generated.
INSERT INTO GymMembers (MemberID, FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES (1, 'Identity Thief', 'thief@email.com', 'BADGE-9001', 30, 'M', 50.00);

#3. Duplicate Badge Number (Unique Constraint)
#Trying to use a badge ID that belongs to someone else.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('New Guy', 'new@email.com', 'BADGE-1001', 25, 'M', 50.00);

#4. Null Value in NOT NULL Column
#Trying to insert a record without a Name.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES (NULL, 'ghost@email.com', 'BADGE-9002', 25, 'M', 50.00);

#5. Data Too Long (String Truncation)
#Inserting a 50-character string into Gender CHAR(1).
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Long Stringer', 'long@email.com', 'BADGE-9003', 25, 'MalePerson', 50.00);

#6. Check Constraint Violation (Age)
#Inserting an age (10) below the allowed minimum (16).
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Kiddo', 'kid@email.com', 'BADGE-9004', 10, 'M', 20.00);

#7. Check Constraint Violation (Gender)
#Inserting 'Z' when only 'M', 'F', or 'O' are allowed.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Alien', 'alien@email.com', 'BADGE-9005', 30, 'Z', 50.00);

#8. Check Constraint Violation (Negative Fee)
#Inserting a negative number for price.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Cheapskate', 'cheap@email.com', 'BADGE-9006', 30, 'M', -50.00);

#9. Type Mismatch (String into Integer)
#Writing "Twenty" instead of the number 20.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Text Mistake', 'text@email.com', 'BADGE-9007', 'Twenty', 'M', 50.00);

#10. Type Mismatch (String into Decimal)
#Writing "Free" into the MonthlyFee column.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Freeloader', 'free@email.com', 'BADGE-9008', 25, 'M', 'Free');

#11. Invalid Date Value (Non-existent Date)
#February 30th does not exist.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee, JoinDate)
VALUES ('Time Traveler', 'time@email.com', 'BADGE-9009', 25, 'M', 50.00, '2023-02-30');

#12. Invalid Date Format
#Using a format SQL doesn't recognize (e.g., Year/Month/Day mixed up).
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee, JoinDate)
VALUES ('Format Error', 'format@email.com', 'BADGE-9010', 25, 'M', 50.00, '13/2023/01');

#13. Column Count Mismatch (Too Few Values)
#Listing 6 columns but providing only 5 values.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Missing Val', 'miss@email.com', 'BADGE-9011', 25, 'M');

#14. Column Count Mismatch (Too Many Values)
#Listing 5 columns but providing 6 values.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender)
VALUES ('Extra Val', 'extra@email.com', 'BADGE-9012', 25, 'M', 50.00);

#15. Unknown Column Name
#Misspelling Email as MailAddress in the column list.
INSERT INTO GymMembers (FullName, MailAddress, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Typo User', 'typo@email.com', 'BADGE-9013', 25, 'M', 50.00);

#16. Out of Range Value (Numeric Overflow)
#nserting a number larger than the column type allows (e.g., billions into a standard INT if restricted, or exceeding Decimal precision).
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Richie Rich', 'rich@email.com', 'BADGE-9014', 25, 'M', 9999999999.99);

#17. Syntax Error (Unescaped Quote)
#Using O'Connor without escaping the single quote.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Tim O'Connor', 'tim@email.com', 'BADGE-9015', 25, 'M', 50.00);


#18. Syntax Error (Missing VALUES keyword)
#Forgetting the word VALUES.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
('Lazy Typer', 'lazy@email.com', 'BADGE-9016', 25, 'M', 50.00);

#19. Missing Default Value violation
#Inserting into the table but skipping FullName (which is NOT NULL) assuming it has a default, when it doesn't.
INSERT INTO GymMembers (Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('no.name@email.com', 'BADGE-9017', 25, 'M', 50.00);

#20. Mathematical Error (Division by Zero in Insert)
#Trying to calculate a value during insert that results in an illegal math operation.
INSERT INTO GymMembers (FullName, Email, BadgeNumber, Age, Gender, MonthlyFee)
VALUES ('Math Fail', 'math@email.com', 'BADGE-9018', 25, 'M', 100/0);