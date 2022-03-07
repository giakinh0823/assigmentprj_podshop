create table [user](
	id int not null identity(1,1) primary key,
	username nvarchar(255) not null,
	password nvarchar(255) not null,
	first_name nvarchar(255),
	last_name nvarchar(255),
	birthday date,
	email nvarchar(255) not null unique,
	phone nvarchar(20),
	gender bit,
	is_super bit default 0,
	is_active bit default 1,
	permission nvarchar(255) default 'user',
	avatar nvarchar(255),
	created_at datetime not null,
	updated_at datetime not null
)

create table permission(
	id int not null identity(1,1) primary key,
	name varchar(200)
)

create table user_permission(
	id int not null identity(1,1) primary key,
	licensed bit not null,
	userId int foreign key references [user](id),
	permissionId int foreign key references permission(id),
)

create table [action](
	id int not null identity(1,1) primary key,
	title nvarchar(255) not null,
	code nvarchar(255) not null,
	feature varchar(200) not null,
)

create table permission_action(
	id int not null identity(1,1) primary key,
	licensed bit not null,
	permissionId int foreign key references permission(id),
	actionId int foreign key references [action](id),
)

create table [group](
	id int not null identity(1,1) primary key,
	name nvarchar(255)
)

create table [category](
	id int not null identity(1,1) primary key,
	name nvarchar(255),
	groupId int foreign key references [group](id),
)


create table [state](
	id int not null identity(1,1) primary key,
	name nvarchar(255)
)


create table pod(
	id int not null identity(1,1) primary key,
	name nvarchar(Max),
	brand nvarchar(255),
	price float,
	quantity int,
	description nvarchar(MAX),
	content nvarchar(MAX),
	isSale bit,
	discount int, 
	created_at datetime not null,
	updated_at datetime not null,
	categoryId int foreign key references [category](id),
	state int foreign key references [state](id),
)



create table [image](
	id int not null identity(1,1) primary key,
	image varchar(255),
	podId int foreign key references [pod](id),
)


create table order_state(
	id int not null identity(1,1) primary key,
	name nvarchar(255)
)


create table customer(
	id int not null identity(1,1) primary key,
	first_name nvarchar(255),
	last_name nvarchar(255),
	email nvarchar(200),
	phone nvarchar(20),
	address nvarchar(255),
)

create table [order](
	id int not null identity(1,1) primary key,
	userId int foreign key references [user](id),
	customerId int foreign key references [customer](id),
	stateId int foreign key references [order_state](id),
	created_at datetime not null,
	updated_at datetime not null,
)


create table order_detail(
	id int not null identity(1,1) primary key,
	quantity int,
	price decimal(6,2),
	discount int,
	created_at datetime not null,
	updated_at datetime not null,
	podId int foreign key references [pod](id),
	orderId int foreign key references [order](id),
)

create table cart(
	id int not null identity(1,1) primary key,
	userId int foreign key references [user](id),
	podId int foreign key references [pod](id),
	quantity int,
	created_at datetime,
	updated_at datetime,
)