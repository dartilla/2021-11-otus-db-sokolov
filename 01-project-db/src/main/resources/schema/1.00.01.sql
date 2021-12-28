--liquibase formatted sql

--changeset dartilla:initial-schema logicalFilePath:schema/1.00.01.sql
create table supplier
(
    id        integer not null
        constraint "supplier-pkey" primary key,
    name      varchar not null
);
comment on table supplier is 'Поставщик';
comment on column supplier.id is 'Идентификатор';
comment on column supplier.name is 'Наименование';

create table product_category
(
    id        integer not null
        constraint "product_category-pkey" primary key,
    name      varchar not null,
    parent_id integer references product_category (id)
);
comment on table product_category is 'Категория продукта';
comment on column product_category.id is 'Идентификатор';
comment on column product_category.name is 'Наименование';
comment on column product_category.parent_id is 'Идентификатор родительской категории';

create table product
(
    id    integer not null
        constraint "product-pkey" primary key,
    name  varchar not null,
    measure_type  varchar not null,
    category_id integer not null references product_category(id)
);
comment on table product is 'Продукт';
comment on column product.id is 'Идентификатор';
comment on column product.name is 'Наименование';
comment on column product.measure_type is 'Единица измерения';
comment on column product.category_id is 'Идентификатор категории';

create table price
(
    id    integer not null
        constraint "price-pkey" primary key,
    supplier_id integer not null references supplier(id),
    product_id integer not null references product(id),
    price numeric(18, 2) not null,
    amount numeric(28, 10)
);
comment on table price is 'Цена на продукт от поставщика';
comment on column price.id is 'Идентификатор';
comment on column price.supplier_id is 'Идентификатор поставщика';
comment on column price.product_id is 'Идентификатор продукта';
comment on column price.price is 'Цена';
comment on column price.amount is 'Количество продукта, который поставляют по данной цене';

create table customer
(
    id        integer not null
        constraint "customer-pkey" primary key,
    name      varchar not null,
    email     varchar,
    phone     varchar
);
comment on table customer is 'Покупатель';
comment on column customer.id is 'Идентификатор';
comment on column customer.name is 'Наименование';
comment on column customer.email is 'Почта';
comment on column customer.phone is 'Контактный номер';

create table orders
(
    id        integer not null
        constraint "order-pkey" primary key,
    customer_id integer not null references customer(id),
    creation_date timestamp not null,
    total numeric(18, 2) not null
);
comment on table orders is 'Заказ';
comment on column orders.id is 'Идентификатор';
comment on column orders.customer_id is 'Идентификатор покупателя';
comment on column orders.creation_date is 'Время создания';
comment on column orders.total is 'Сумма';

create table order_item
(
    id        integer not null
        constraint "order_item-pkey" primary key,
    order_id integer not null references orders(id),
    product_id integer not null references product(id),
    supplier_id integer not null references supplier(id),
    price numeric(18, 2) not null,
    amount numeric(28, 10) not null
);
comment on table order_item is 'Элемент покупки';
comment on column order_item.id is 'Идентификатор';
comment on column order_item.order_id is 'Идентификатор заказа';
comment on column order_item.product_id is 'Идентификатор продукта';
comment on column order_item.supplier_id is 'Идентификатор поставщика';
comment on column order_item.amount is 'Количество продукта в заказе';
comment on column order_item.price is 'Цена продукта на момент заказа';