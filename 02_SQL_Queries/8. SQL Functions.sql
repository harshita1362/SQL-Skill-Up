-- 1. Single Row Function
SELECT
    -- Character Function to format the name
    INITCAP(first_name || ' ' || last_name) AS full_name,

    -- Numeric Function to round the income for readability
    ROUND(annual_income, -3) AS rounded_income,

    -- Data Mining Function to get the default probability
    PREDICTION_PROBABILITY(loan_default_model, 'YES' USING *) AS default_probability
FROM
    Loan_applicant
WHERE
    annual_income > 100000
ORDER BY
    default_probability DESC
FETCH FIRST 5 ROWS ONLY;

-- 2. Analytic Function
SELECT
  employee_id,
  department_id,
  salary,
  AVG(salary) OVER (PARTITION BY department_id) AS avg_dept_salary
FROM
  employees;

-- 3. Model Function
SELECT month, sales
FROM sales_data
MODEL
  DIMENSION BY (month)
  MEASURES (sales)
  RULES ITERATE(2) (
    sales['Mar'] = NVL(sales['Mar'], sales['Feb'] * 1.10),
    sales['Apr'] = NVL(sales['Apr'], sales['Mar'] * 1.10)
  );

-- 4. User Defined Function
SELECT
  employee_id,
  salary,
  get_annual_salary(salary) AS annual_salary
FROM
  employees;

-- 5. Scalar Function
SELECT UPPER('geeksforgeeks') AS result FROM dual;

-- 6. System and Utility Functions
SELECT BIN(18);
SELECT BINARY "GeeksforGeeks";
SELECT CONNECTION_ID();
SELECT CURRENT_USER();
SELECT DATABASE();
SELECT LAST_INSERT_ID();
SELECT SESSION_USER();
SELECT SYSTEM_USER();
SELECT USER();
SELECT VERSION();

-- 7. Conditional Functions
SELECT Name, 
       CASE WHEN Salary > 5000 THEN 'High' 
            ELSE 'Low' END AS Salary_Level
FROM Employees;

-- 8. Mathematical Functions
SELECT num, SQRT(num) AS square_root
FROM numbers;
