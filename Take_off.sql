CREATE TABLE loggin (
	id serial PRIMARY KEY,
	type_account character varying(50) NOT NULL,
	email character varying(5) NOT NULL,
	password character varying(50) NOT NULL
);

CREATE TABLE job (
	id serial PRIMARY KEY,
	name character varying(100) NOT NULL
);

CREATE TABLE expertise (
	id serial PRIMARY KEY,
	name character varying(100) NOT NULL
);

CREATE TABLE job_expertise (
	id serial PRIMARY KEY,
  id_job integer NOT NULL,
	id_expertise integer NOT NULL,
  FOREIGN KEY (id_job) REFERENCES job ON DELETE CASCADE, 
  FOREIGN KEY (id_expertise) REFERENCES expertise ON DELETE CASCADE 
);

CREATE TABLE expertise_category (
	id serial PRIMARY KEY,
	name character varying(100) NOT NULL,
  id_expertise integer NOT NULL,
  FOREIGN KEY (id_expertise) REFERENCES expertise ON DELETE CASCADE 
);

CREATE TABLE location (
	id serial PRIMARY KEY,
	name character varying(100) NOT NULL
);

CREATE TABLE user_freelance (
	id serial PRIMARY KEY,
	firstname character varying(50) NOT NULL,
  lastname character varying(50) NOT NULL,
  picture_profil character varying(500) NULL,
  about character varying(1500) NULL,
	siren character varying(50) NULL,
  rate decimal NOT NULL,
  price integer NOT NULL,
  language character varying(20) NOT NULL,
  id_loggin integer NOT NULL,
  id_job integer NOT NULL,
  id_location integer NOT NULL,
  FOREIGN KEY (id_loggin) REFERENCES loggin ON DELETE CASCADE,
  FOREIGN KEY (id_job) REFERENCES job ON DELETE CASCADE
  FOREIGN KEY (id_location) REFERENCES location ON DELETE CASCADE,
);

CREATE TABLE customer (
	id serial PRIMARY KEY,
	firstname character varying(50) NOT NULL,
  lastname character varying(50) NOT NULL,
  picture_profil character varying(500) NULL,
  language character varying(20) NOT NULL,
  id_loggin integer NOT NULL,
  id_location integer NOT NULL,
  id_favorite_job integer NOT NULL,
  FOREIGN KEY (id_loggin) REFERENCES loggin ON DELETE CASCADE,
  FOREIGN KEY (id_location) REFERENCES location ON DELETE CASCADE
  FOREIGN KEY (id_favorite_job) REFERENCES favorite_job ON DELETE CASCADE
);

CREATE TABLE favorite_job (
	id serial PRIMARY KEY,
  id_job integer NOT NULL,
	id_customer integer NOT NULL,
  FOREIGN KEY (id_job) REFERENCES job ON DELETE CASCADE, 
  FOREIGN KEY (id_customer) REFERENCES customer ON DELETE CASCADE 
);

CREATE TABLE experience (
	id serial PRIMARY KEY,
	compagny character varying(50) NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL,
  occupation character varying(50) NOT NULL,
	location character varying(50) NOT NULL,
  description character varying(1500) NOT NULL,
  id_user_freelance integer NOT NULL,
  FOREIGN KEY (id_user_freelance) REFERENCES user_freelance ON DELETE CASCADE
);

CREATE TABLE graduation (
	id serial PRIMARY KEY,
  start_date date NOT NULL,
  end_date date NOT NULL,
  title character varying(50) NOT NULL,
	school character varying(50) NOT NULL,
  location character varying(50) NOT NULL,
  description character varying(1500) NOT NULL,
  id_user_freelance integer NOT NULL,
  FOREIGN KEY (id_user_freelance) REFERENCES user_freelance ON DELETE CASCADE
);

CREATE TABLE estimate (
	id serial PRIMARY KEY,
  job_title character varying(50) NOT NULL,
  mission character varying(150) NOT NULL,
  from_when date NOT NULL,
  duration character varying(15) NOT NULL,
  home_office character varying(30) NOT NULL,
  price integer NOT NULL,
  status character varying(20) NOT NULL,
  id_user_freelance integer NOT NULL,
  FOREIGN KEY (id_user_freelance) REFERENCES user_freelance ON DELETE CASCADE,
  id_customer integer NOT NULL,
  FOREIGN KEY (id_customer) REFERENCES customer ON DELETE CASCADE
);

