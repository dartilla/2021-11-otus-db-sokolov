--liquibase formatted sql

--changeset dartilla:initial-schema logicalFilePath:schema/1.00.01.sql
create table make
(
    id         integer not null
        constraint "make-pkey" primary key,
    brief_name varchar not null,
    name       varchar not null
);
comment on table make is 'Автопроизводитель';
comment on column make.id is 'Идентификатор';
comment on column make.brief_name is 'Краткое имя(аббревиатура)';
comment on column make.name is 'Наименование';

create table model
(
    id       integer not null
        constraint "model-pkey" primary key,
    name     varchar not null,
    make_id integer not null references make (id)
);
comment on table model is 'Модель авто';
comment on column model.id is 'Идентификатор';
comment on column model.name is 'Наименование';
comment on column model.make_id is 'Идентификатор автопроизводителя';

create table generation
(
    id       integer not null
        constraint "generation-pkey" primary key,
    name     varchar not null,
    model_id integer not null references model (id)
);
comment on table generation is 'Поколение авто';
comment on column generation.id is 'Идентификатор';
comment on column generation.name is 'Наименование';

create table owner
(
    id    integer not null
        constraint "owner-pkey" primary key,
    login varchar not null,
    phone varchar not null,
    email varchar
);
comment on table owner is 'Автовладелец';
comment on column owner.id is 'Идентификатор';
comment on column owner.login is 'Логин';
comment on column owner.phone is 'Контактный телефон';
comment on column owner.email is 'Электронная почта';

create table car_sale
(
    id            integer not null
        constraint "owner-pkey" primary key,
    vin           varchar not null,
    owner_id      integer not null references owner (id),
    make_id integer not null references make(id),
    model_id integer not null references model(id),
    generation_id integer references generation (id),
    price numeric(18, 2) not null,
    description varchar
);
comment on table car_sale is 'Объявление о продаже автомобиля';
comment on column owner.id is 'Идентификатор';
comment on column owner.login is 'Логин';
comment on column owner.phone is 'Контактный телефон';
comment on column owner.email is 'Электронная почта';


create table equipment
(
    id       integer not null
        constraint "equipment-pkey" primary key,
    name     varchar not null
);
comment on table generation is 'Поколение авто';

create table generation_equipment
(
    generation_id     integer not null references generation(id),
    equipment_id     integer not null references equipment(id)
);
comment on table generation is 'Поколение авто';

create table equipment_item
(
    id       integer not null
        constraint "equipment_item-pkey" primary key,
    name     varchar not null,
    value     varchar not null
);
comment on table generation is 'Поколение авто';
