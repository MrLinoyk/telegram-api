drop table if exists purchase;
drop table if exists users;

create table purchase
(
    id                  BIGSERIAL           NOT NULL, --id of purchase
    name                varchar             NOT NULL, -- purchase's name
    cost                BIGINT              NOT NULL, --purchase's cost
    CONSTRAINT purchase_pkey PRIMARY KEY (id)
);

create table users
(
    id                  BIGSERIAL           NOT NULL, --user's id
    firstName           VARCHAR             NOT NULL, -- user's first name
    lastName            varchar             NOT NULL, -- user's last name
    money_amount        BIGINT              NOT NULL, -- money that stay
    purchase_id         BIGINT              NOT NULL, -- id of last purchase
    CONSTRAINT users_pkey PRIMARY KEY (id),
    CONSTRAINT users_purchase_fkey FOREIGN KEY (purchase_id) references purchase (id)
);