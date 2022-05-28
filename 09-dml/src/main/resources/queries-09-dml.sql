-- подготовим данные
delete from order_item;
delete from product;
delete from orders;
delete from customer;
delete from product_category;
delete from supplier;

insert into customer (id, name, email)
values (1, 'Иван Ерофеев', 'ierofeev@gmail.com'),
       (2, 'Андрей Тюхин', 'atuhin@yandex.ru'),
       (3, 'Антон Ермолов', 'aermolov@gmail.com'),
       (4, 'Вячеслав Быков', 'vbykov@ya.ru')
;

insert into orders (id, customer_id, creation_date, total)
values (1, 1, date '2021-05-27' + time '03:30', 500),
       (2, 1, date '2021-05-27' + time '16:20', 2000),
       (3, 2, date '2021-06-22' + time '20:00', 2000)
;

insert into supplier (id, name) VALUES (1, 'Рога и Копыта');

insert into product_category (id, name, parent_id) VALUES (1, 'Хозяйственные товары', null);

insert into product (id, name, measure_type, category_id) values (1, 'Карандаш "Альфа"', 'штука', 1);

insert into order_item (id, order_id, product_id, supplier_id, price, amount)
values (1, 1, 1, 1, 100, 5),
       (2, 2, 1, 1, 1000, 2)
;

-- 1. Напишите запрос по своей базе с регулярным выражением, добавьте пояснение, что вы хотите найти.
-- поиск клиента с почтой на домене начинающимся на "ya" в рунете
select * from customer where email ~ '@ya.*\.ru';

-- 2. Напишите запрос по своей базе с использованием LEFT JOIN и INNER JOIN
select customer.name, orders.id, orders.creation_date, orders.total, oi.amount, oi.price
from customer
         left join orders on customer.id = orders.customer_id
         inner join order_item oi on orders.id = oi.order_id
;
-- как порядок соединений в FROM влияет на результат? Почему?
select customer.name, orders.id, orders.creation_date, orders.total, oi.amount, oi.price
from orders
         left join customer on customer.id = orders.customer_id
         inner join order_item oi on orders.id = oi.order_id
;
-- В данном конкретном случае никак не влияет, т.к. у orders есть внешний notNull ключ customer_id, а значит
-- нет записей у orders, которые не связаны с customer.
-- Без этого foreign key в случае, если в customer были бы клиенты которые не делали заказ разница бы была

-- 3. Напишите запрос на добавление данных с выводом информации о добавленных строках.
insert into customer (id, name, email)
values (5, 'Артём Артемьев', 'aartemev@gmail.com')
returning id, name, email
;

-- 4. Напишите запрос с обновлением данные используя UPDATE FROM.
update customer set phone = ext_info.phone from
    (select 'Иван Ерофеев' name, '+7 968 111 25 48' phone) ext_info
where ext_info.name = customer.name;

-- 5. Напишите запрос для удаления данных с оператором DELETE используя join с другой таблицей с помощью using.
delete from orders using customer
where orders.customer_id = customer.id and customer.name = 'Андрей Тюхин';