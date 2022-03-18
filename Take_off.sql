CREATE TABLE loggin (
	id serial PRIMARY KEY,
	type_account integer NOT NULL,
	email character varying(150) NOT NULL,
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

CREATE TABLE account (
	id serial PRIMARY KEY,
	firstname character varying(50) NOT NULL,
  lastname character varying(50) NOT NULL,
  picture_profil character varying(500) NULL,
  about character varying(1500) NULL,
	siren character varying(50) NULL,
  rate decimal NULL,
  price integer NULL,
  language character varying(20) NOT NULL,
  id_loggin integer NOT NULL,
  id_job integer NULL,
  id_location integer NOT NULL,
  FOREIGN KEY (id_loggin) REFERENCES loggin ON DELETE CASCADE,
  FOREIGN KEY (id_job) REFERENCES job ON DELETE CASCADE,
  FOREIGN KEY (id_location) REFERENCES location ON DELETE CASCADE
);


CREATE TABLE favorite_job (
	id serial PRIMARY KEY,
  id_job integer NOT NULL,
	id_account integer NOT NULL,
  FOREIGN KEY (id_job) REFERENCES job ON DELETE CASCADE, 
  FOREIGN KEY (id_account) REFERENCES account ON DELETE CASCADE 
);

CREATE TABLE experience (
	id serial PRIMARY KEY,
	compagny character varying(50) NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL,
  occupation character varying(50) NOT NULL,
	location character varying(50) NOT NULL,
  description character varying(1500) NOT NULL,
  id_account integer NOT NULL,
  FOREIGN KEY (id_account) REFERENCES account ON DELETE CASCADE
);

CREATE TABLE graduation (
	id serial PRIMARY KEY,
  title character varying(50) NOT NULL,
	school character varying(50) NOT NULL,
  location character varying(50) NOT NULL,
  description character varying(1500) NOT NULL,
  start_date date NOT NULL,
  end_date date NOT NULL,
  id_account integer NOT NULL,
  FOREIGN KEY (id_account) REFERENCES account ON DELETE CASCADE
);

CREATE TABLE status (
  id serial PRIMARY KEY,
  name character varying(100) NOT NULL
);

CREATE TABLE estimate (
	id serial PRIMARY KEY,
  job_title character varying(50) NOT NULL,
  mission character varying(150) NOT NULL,
  from_when date NOT NULL,
  duration character varying(15) NOT NULL,
  home_office character varying(30) NOT NULL,
  price integer NOT NULL,
  id_status integer NOT NULL,
  id_freelance integer NOT NULL,
  id_customer integer NOT NULL,
  FOREIGN KEY (id_status) REFERENCES status ON DELETE CASCADE,
  FOREIGN KEY (id_freelance) REFERENCES account ON DELETE CASCADE,
  FOREIGN KEY (id_customer) REFERENCES account ON DELETE CASCADE
);

CREATE TABLE skill (
	id serial PRIMARY KEY,
  id_account integer NOT NULL,
	id_expertise integer NOT NULL,
  id_expertise_category integer NOT NULL,
  FOREIGN KEY (id_account) REFERENCES account ON DELETE CASCADE, 
  FOREIGN KEY (id_expertise) REFERENCES expertise ON DELETE CASCADE 
  FOREIGN KEY (id_expertise_category) REFERENCES expertise_category ON DELETE CASCADE
);