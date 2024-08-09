--crate the loans table 
CREATE TABLE loans (
    loan_id SERIAL PRIMARY KEY,
    id DOUBLE PRECISION,
    state_code TEXT,
    application_type TEXT,
    emp_length TEXT,
    emp_title TEXT,
    grade TEXT,
    home_ownership TEXT,
    issue_date TEXT,
    last_credit_pull_date TEXT,
    last_payment_date TEXT,
    loan_status TEXT,
    next_payment_date TEXT,
    member_id DOUBLE PRECISION,
    purpose TEXT,
    sub_grade TEXT,
    term TEXT,
    verification_status TEXT,
    annual_income DOUBLE PRECISION,
    dti DOUBLE PRECISION,
    installment DOUBLE PRECISION,
    int_rate DOUBLE PRECISION,
    loan_amount DOUBLE PRECISION,
    total_acc DOUBLE PRECISION,
    total_payment DOUBLE PRECISION
);
--create the states table 
CREATE TABLE states (
    state_id SERIAL PRIMARY KEY,
    state_code VARCHAR(2)
);

select * FROM loans
--create the employment table 
CREATE TABLE employment (
    emp_id SERIAL PRIMARY KEY,
    emp_title VARCHAR(50),
    emp_length VARCHAR(20)
);
--create the members table
CREATE TABLE members (
    member_id DOUBLE PRECISION PRIMARY KEY,
    state_code INTEGER,
    emp_id INTEGER,
    annual_income DOUBLE PRECISION,
    dti DOUBLE PRECISION,
    home_ownership VARCHAR(10)
);

--create the loan_details table 
CREATE TABLE loan_details (
    detail_id SERIAL PRIMARY KEY,
    loan_id INTEGER,
    installment DOUBLE PRECISION,
    int_rate DOUBLE PRECISION,
    total_acc DOUBLE PRECISION,
    total_payment DOUBLE PRECISION,
    last_credit_pull_date text,
    last_payment_date text
);
-- increase the column will now store character strings of up to 100 characters in length.
ALTER TABLE employment
ALTER COLUMN emp_length TYPE VARCHAR(100);
-- increase the column will now store character strings of up to 100 characters in length.
ALTER TABLE employment
ALTER COLUMN emp_title TYPE VARCHAR(100);
--set the ownership for the tables 
ALTER TABLE loan_details OWNER TO postgres;
ALTER TABLE loans OWNER TO postgres;
ALTER TABLE members OWNER TO postgres;
ALTER TABLE employment OWNER TO postgres;
ALTER TABLE states OWNER TO postgres;

-- Index on member_id for fast lookup of loans by member
CREATE INDEX idx_loans_member_id ON loans (member_id);

-- Index on state_code for queries filtering by state
CREATE INDEX idx_loans_state_code ON loans (state_code);

-- Index on application_type if there are frequent queries filtering by this field
CREATE INDEX idx_loans_application_type ON loans (application_type);

-- Index on loan_status for commonly accessed queries on the status of loans
CREATE INDEX idx_loans_loan_status ON loans (loan_status);

-- Index on issue_date for queries that sort or filter by the date of loan issuance
CREATE INDEX idx_loans_issue_date ON loans (issue_date);

-- Index on last_payment_date for sorting or filtering by when the last payment was made
CREATE INDEX idx_loans_last_payment_date ON loans (last_payment_date);

CREATE INDEX idx_states_state_code ON states (state_code);

-- Index on emp_title for efficient lookups by job title
CREATE INDEX idx_employment_emp_title ON employment (emp_title);

-- Index on emp_length for efficient searches or filters by employment length
CREATE INDEX idx_employment_emp_length ON employment (emp_length);

-- Index on state_id for efficient joins with the states table
CREATE INDEX idx_members_state_id ON members (state_id);

-- Index on emp_id for efficient joins with the employment table
CREATE INDEX idx_members_emp_id ON members (emp_id);

-- Index on annual_income for queries filtering or sorting by income
CREATE INDEX idx_members_annual_income ON members (annual_income);

-- Index on dti (debt-to-income ratio) for queries filtering by dti
CREATE INDEX idx_members_dti ON members (dti);

-- Index on home_ownership for queries filtering by home ownership status
CREATE INDEX idx_members_home_ownership ON members (home_ownership);

-- Index on loan_id for efficient joins with the loans table
CREATE INDEX idx_loan_details_loan_id ON loan_details (loan_id);

-- Index on installment for queries filtering or sorting by installment amounts
CREATE INDEX idx_loan_details_installment ON loan_details (installment);

-- Index on int_rate for queries filtering or sorting by interest rates
CREATE INDEX idx_loan_details_int_rate ON loan_details (int_rate);

-- Index on total_acc for queries filtering or analyzing total accounts
CREATE INDEX idx_loan_details_total_acc ON loan_details (total_acc);

-- Index on last_credit_pull_date for queries filtering or sorting by credit pull date
CREATE INDEX idx_loan_details_last_credit_pull_date ON loan_details (last_credit_pull_date);

-- Index on last_payment_date for queries filtering or sorting by payment date
CREATE INDEX idx_loan_details_last_payment_date ON loan_details (last_payment_date);

select * from members




