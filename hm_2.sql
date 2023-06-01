/*
Создание таблицы
*/
CREATE TABLE `homework_database`.`sales`(
    id INT NOT NULL AUTO_INCREMENT,
    order_date DATE NOT NULL,
    count_product INT NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO sales (order_date, count_product)
VALUES
    ('2022-01-01',156)
    ('2022-01-02',180)
    ('2022-01-03',21)
    ('2022-01-04',124)
    ('2022-01-05',341);

/*
Сортировка заказов по их размеру
*/

SELECT id, order_date, count_product,
CASE TRUE
    WHEN count_product < 100 THEN 'Маленький заказ'
    WHEN count_product >= 100 THEN 'Средний заказ'
    ELSE 'Большой заказ'
END AS order_size
FROM sales;

CREATE TABLE orders (
    order_id INT NOT NULL AUTO_INCREMENT,
    emloyee_id VARCHAR(5) NOT NULL,
    amount DECIMAL(20, 2) NOT NULL,
    order_status VARCHAR(45) NOT NULL,
    PRIMARY KEY (order_status)
);

SELECT order_id, order_status,
CASE order_status
    WHEN 'OPEN' THEN 'Order is in open state'
    WHEN 'CLOSED' THEN 'Order is closed'
    ELSE 'Order is cancelled'
END AS order_summary
FROM orders;

/*
Чем NULL отличается от 0?
0 является значением, а NULL указывает на отсутствие значения.
*/