INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring)
VALUES ('Some Company Inc', 'Some Street 5, Mycity', 85.91, TRUE);

INSERT INTO employers(company_name, company_address, yearly_revenue, is_hiring) 
VALUES('Learning Inc', 'Educationstreet 12, London', 15.87, TRUE);

INSERT INTO users (first_name, last_name, yearly_salary, current_status)
VALUES ('Frank', 'Meyer', 30000, 'self-employed');

INSERT INTO conversations (user_id, employer_id, message)
VALUES (1, 2, 'Hi there!');