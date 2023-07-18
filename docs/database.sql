CREATE DATABASE graphql_test;


- id
- createdAt
- updatedAt
- discName
- discColour
- discManufacturer
- ownerName
- ownerPhoneNumber
- ownerEmailAddress
- club
- notifiedAt
- additionalInfo
- isReturnedToOwner
- canBeSoldOrDonated
- clubId // allows us to have separate disc date for several clubs

club
- id
- createdAt
- updatedAt
- name

CREATE TABLE discs
(
    id INT(10) NOT NULL AUTO_INCREMENT,
    created_at datetime NOT NULL,
    updated_at datetime NOT NULL,
    disc_name VARCHAR(64) NULL,
    disc_colour VARCHAR(32) NULL,
    disc_manufacturer VARCHAR(32) NULL,
    owner_name VARCHAR(64) NULL,
    owner_phone_number VARCHAR (64) NULL,
    owner_email_Address VARCHAR (255) NULL,
    notified_at datetime NULL,
    additional_info TEXT NULL,
    is_returned_to_owner TINYINT(1) NULL,
    can_be_sold_or_donated TINYINT(1) NULL,
    club_id INT(10) NOT NULL,
    INDEX idx_club_id (club_id),
    FOREIGN KEY (club_id)
        REFERENCES clubs(id),
    PRIMARY KEY(id)
);

CREATE TABLE clubs
(
    id INT(10) NOT NULL AUTO_INCREMENT,
    created_at datetime NOT NULL,
    updated_at datetime NOT NULL,
    name VARCHAR(128) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO clubs (created_at, updated_at, name) VALUES (NOW(), NOW(), 'Talin Tallaajat');
INSERT INTO clubs (created_at, updated_at, name) VALUES (NOW(), NOW(), 'Puskasoturit');


CREATE TABLE users
( id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(255) NULL,
  phone VARCHAR(64) NULL,
  address VARCHAR(100) NOT NULL,
  zip_code VARCHAR(5) NOT NULL,
  city VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

create table notes (
    id varchar(36) not null,
    title varchar(128) not null,
    body varchar(512) not null,
    created_at datetime,
    updated_at datetime,

    primary key (id)
);

insert into notes (id, title, body, created_at, updated_at) VALUES
(
    '4dbfe81c-a2d1-410c-bfbe-3c5626a260d8',
    'Mah title',
    'Max body',
    '2023-06-08 21:02:00',
    '2023-06-08 21:02:00'
);


INSERT INTO users (first_name, last_name, email, phone, address, zip_code, city)
VALUES
    (
        'John',
        'Doe',
        'john.doe@example.com',
        '+358504110001',
        'Example street 1 A 3',
        '00400',
        'Helsinki'
    ),
    (
        'Jane',
        'Doe',
        'jane.doe@example.com',
        '+358504110001',
        'Pure Avenue 64B',
        '00710',
        'Helsinki'
    );


