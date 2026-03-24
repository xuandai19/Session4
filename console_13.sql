CREATE TABLE employees (
    id INT PRIMARY KEY,
    full_name VARCHAR(255),
    department VARCHAR(50),
    position VARCHAR(50),
    salary INT,
    bonus INT,
    join_year INT
);

INSERT INTO employees
VALUES (1, 'Nguyễn Văn Huy', 'IT', 'Developer', 18000000, 1000000, 2021),
    (2, 'Trần Thị Mai', 'HR', 'Recruiter', 12000000, NULL, 2020),
    (3, 'Lê Quốc Trung', 'IT', 'Tester', 15000000, 800000, 2023),
    (4, 'Nguyễn Văn Huy', 'IT', 'Developer', 18000000, 1000000, 2021),
    (5, 'Phạm Ngọc Hân', 'Finance', 'Accountant', 14000000, NULL, 2019),
    (6, 'Bùi Thị Lan', 'HR', 'HR Manager', 20000000, 3000000, 2018),
    (7, 'Đặng Hữu Tài', 'IT', 'Developer', 17000000, NULL, 2022);

select * from employees;

update employees
set salary = salary * 1.1
where department = 'IT' and salary < 18000000;

update employees
set bonus = 500000
where bonus is null;

select *
from employees
where department in ('IT', 'HR')
    and join_year > 2020
    and (salary + bonus) > 15000000;

select *
from employees
order by (salary + bonus) desc
limit 3;

select *
from employees
where full_name like 'Nguyễn%' or full_name like '%Hân';

select distinct department
from employees
where bonus is not null;

select *
from employees
where join_year between 2019 and 2022;
