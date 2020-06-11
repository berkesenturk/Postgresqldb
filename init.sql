CREATE TABLE customer (
	customerid SERIAL PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	password  VARCHAR(255) NOT NULL,
	email VARCHAR (50) UNIQUE

);

CREATE TABLE car (

	carid serial PRIMARY KEY,
	customerid INTEGER,
	brand VARCHAR(255) NOT NULL,
	model VARCHAR(255) NOT NULL,
	hp INTEGER NOT NULL,
	body VARCHAR(255) NOT NULL,
	color VARCHAR(255) NOT NULL,
	year SMALLINT NOT NULL,
	mileage INTEGER NOT NULL,
	city  VARCHAR(255),
	value BIGINT,
	FOREIGN KEY (customerid) REFERENCES customer(customerid)
   
);



CREATE TABLE parts(
    partsid  SERIAL PRIMARY KEY,
    carid INTEGER ,
    hood  VARCHAR(255),
    front_bumper  VARCHAR(255),
    roof VARCHAR(255),
    wheel  VARCHAR(255),
    lf_door  VARCHAR(255),
    rf_door  VARCHAR(255),
    rb_door  VARCHAR(255),
    lb_door  VARCHAR(255),
    tailgate  VARCHAR(255),
    FOREIGN KEY (carid) REFERENCES car(carid)
);

