/*
Создание таблицы
*/
CREATE TABLE 'staff'
(
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(50),
    `last_name` VARCHAR(50),
    `post` VARCHAR(50),
    `seniority` INT,
    `salary` INT,
    `age` INT
);
/*
Наполнение таблицы
*/
INSERT INTO 'staff' (first_name, last_name, post, seniority, salary, age)
VALUES
    ('Вася', 'Петров', 'Начальник', 40, 100000, 60)
    ('Петр', 'Власов', 'Начальник', 8, 70000, 30)
    ('Катя', 'Катина', 'Инженер', 2, 70000, 19)
    ('Саша', 'Сасин', 'Инженер', 12, 50000, 35)
    ('Иван', 'Иванов', 'Рабочий', 40, 30000, 59)
    ('Петр', 'Петров', 'Рабочий', 20 , 25000, 40)
    ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35)
    ('Антон', 'Антонов', 'Рабочий', 8, 19, 28)
    ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25)
    ('Максим', 'Максимов', 'Рабочий', 2, 11000, 22)
    ('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24)
    ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

/*
Сортировка по убываюнию з/п 
*/
SELECT * FROM staff
ORDER BY salary;
/*
Сортировка по возрастанию з/п
*/
SELECT * FROM staff
ORDER BY salary DESC;
/*
Вывод 5 самых больших зарплат
*/
SELECT * FROM staff
ORDER BY salary DESC
LIMIT 5;
/*
Вывод сумарной зарплаты каждой специальности
*/
SELECT post, SUM(salary) AS sum_salary FROM staff
GROUP BY post;
/*
Колличество сотрудников специальности рабочий в возрасте 24-49 лет
*/
SELECT COUNT(id) AS count_id FROM staff
WHERE post = 'Рабочий' AND age > 24 AND age <= 49;
/*
Количество специальностей
*/
SELECT COUNT(DISTINCT post) AS count_post FROM staff;
/*
Специальности сотрудников со средним возрастом меньше 30 лет
*/
SELECT post FROM staff
GROUP BY post 
HAVING AVG(age) < 30;



