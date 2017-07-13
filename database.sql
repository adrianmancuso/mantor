create table content(
	id serial4 primary key,
	author varchar(400),
	bio varchar(1600),
	image text,
	body text,
	media varchar(400)
);

create table users(
	id serial4 primary key,
	name varchar(400) not null;
	email text not null unique,
	phone varchar(10) not null unique;
	location text not null,
	password_digest text,
	preferred_days text,
	preferred_times text,
);

