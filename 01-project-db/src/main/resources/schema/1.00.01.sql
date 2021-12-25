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
    category_id integer references product_category(id),
    price numeric(18, 2) not null,
    supplier_id not null references supplier(id)
);
comment on table product is 'Продукт';
comment on column product.id is 'Идентификатор';
comment on column product.name is 'Наименование';
comment on column product.category_id is 'Идентификатор категории';
comment on column product.price is 'Цена';

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

create table order
(
    id        integer not null
        constraint "order-pkey" primary key,
    customer_id integer not null references customer(id),
    creation_date timestamp not null,
    total numeric(18, 2) not null
);
comment on table order is 'Заказ';
comment on column order.id is 'Идентификатор';
comment on column order.customer_id is 'Идентификатор покупателя';
comment on column order.creation_date is 'Время создания';
comment on column order.total is 'Сумма';

create table order_item
(
    id        integer not null
        constraint "order_item-pkey" primary key,
    order_id integer not null references order(id),
    product_id integer not null references product(id),
    count numeric(18, 2) not null,
    price numeric(18, 2)
);
comment on table order_item is 'Элемент покупки';
comment on column order_item.id is 'Идентификатор';
comment on column order_item.order_id is 'Идентификатор заказа';
comment on column order_item.product_id is 'Идентификатор продукта';
comment on column order_item.count is 'Число единиц продукта в заказе';
comment on column order_item.price is 'Цена продукта на момент заказа';