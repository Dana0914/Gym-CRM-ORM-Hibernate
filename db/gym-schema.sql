CREATE TABLE users (
    id serial4 NOT NULL,
    firstname VARCHAR NOT NULL,
    lastname VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    is_active BOOLEAN NOT NULL,
    PRIMARY KEY (id)

);

CREATE TABLE trainee (
    id serial4 NOT NULL,
    user_id int4 NOT NULL ,
    date_of_birth DATE NOT NULL,
    address VARCHAR NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)


);

CREATE TABLE trainer (
    id serial4 NOT NULL,
    user_id int4 NOT NULL,
    specialization VARCHAR NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)

);

CREATE TABLE training_type (
    id serial4 NOT NULL,
    training_type_name VARCHAR NOT NULL,
    PRIMARY KEY (id)

);

CREATE TABLE training (
    id serial4 NOT NULL,
    trainee_id int4 NOT NULL ,
    trainer_id int4 NOT NULL,
    training_name VARCHAR NOT NULL ,
    training_type_id int4 NOT NULL ,
    training_date DATE NOT NULL,
    training_duration INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (trainee_id) REFERENCES trainee (id),
    FOREIGN KEY (trainer_id) REFERENCES trainer (id),
    FOREIGN KEY (training_type_id) REFERENCES training_type (id)

);



