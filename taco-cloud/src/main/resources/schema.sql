create table if not exists Taco_Order (
    id identity,
    delivery_Name varChar(50) not null,
    delivery_Street varChar(50) not null,
    delivery_City varChar(50) not null,
    delivery_State varChar(50) not null,
    delivery_Zip varChar(50) not null,
    cc_number varChar(16) not null,
    cc_expiration varChar(5) not null,
    cc_cvv varChar(3) not null,
    placed_at timestamp not null
);

create table if not exists Taco (
    id identity,
    name varChar(50) not null,
    taco_order bigint not null,
    taco_order_key bigint not null,
    created_at timestamp not null
);

create table if not exists Ingredient_Ref (
    ingredient varChar(4) not null,
    taco bigint not null,
    taco_key bigint not null
);

create table if not exists Ingredient (
    id varChar(4) unique not null,
    name varChar(25) not null,
    type varChar(10) not null
);

alter table Taco add foreign key (taco_order) references Taco_Order(id);
alter table Ingredient_Ref add foreign key (ingredient) references Ingredient(id);