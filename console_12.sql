CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    category VARCHAR(50),
    publish_year INT,
    price INT,
    stock INT
);

INSERT INTO books
VALUES (1, 'Lập trình C cơ bản', 'Nguyễn Văn Nam', 'CNTT', 2018, 95000, 20),
    (2, 'Học SQL qua ví dụ', 'Trần Thị Hạnh', 'CSDL', 2020, 125000, 12),
    (3, 'Lập trình C cơ bản', 'Nguyễn Văn Nam', 'CNTT', 2018, 95000, 20),
    (4, 'Phân tích dữ liệu với Python', 'Lê Quốc Bảo', 'CNTT', 2022, 180000, NULL),
    (5, 'Quản trị cơ sở dữ liệu', 'Nguyễn Thị Minh', 'CSDL', 2021, 150000, 5),
    (6, 'Học máy cho người mới bắt đầu', 'Nguyễn Văn Nam', 'AI', 2023, 220000, 8),
    (7, 'Khoa học dữ liệu cơ bản', 'Nguyễn Văn Nam', 'AI', 2023, 220000, NULL);

select * from books;

update books
set price = price * 1.1
where publish_year >= 2021 and price < 200000;

update books
set stock = 0
where stock is null;

select *
from books
where category in  ('CNTT', 'AI')
    and price between 100000 and 250000;

select *
from books
order by price desc, title;

select *
from books
where title ilike '%học%';

select distinct category
from books
where publish_year > 2020;

select *
from books
limit 2 offset 1;
