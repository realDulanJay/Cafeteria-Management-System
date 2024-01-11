create table user(
    id int primary key NOT NULL AUTO_INCREMENT,
    name varchar(250) NOT NULL,
    contactNumber varchar(20) NOT NULL,
    email varchar(50) NOT NULL,
    password varchar(250) NOT NULL,
    status varchar(20) NOT NULL,
    role varchar(20) NOT NULL,
    UNIQUE (email)
);

insert into user(name,contactNumber,email,password,status,role) values(
    'Admin',
    '1234567890',
    'admin@gmail.com',
    'admin',
    'true',
    'admin'
    );

create table category(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    primary key(id)
);

create table product(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    categoryId integer NOT NULL,
    description varchar(255),
    price integer,
    status varchar(20),
    primary key(id)
);

create table bill(
    id int NOT NULL AUTO_INCREMENT,
    uuid varchar(200) NOT NULL,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    contactNumber varchar(20) NOT NULL,
    paymentMethod varchar(50) NOT NULL,
    total int NOT NULL,
    productDetails JSON DEFAULT NULL,
    createdBy varchar(255) NOT NULL,
    primary key(id) 
);