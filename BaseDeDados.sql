create table users (
    users_id SERIAL NOT NULL CONSTRAINT user_pkey PRIMARY KEY,
    users_name VARCHAR NOT NULL,
    users_password VARCHAR NOT NULL
);

create table quest (
    quest_id SERIAL NOT NULL CONSTRAINT quest_pkey PRIMARY KEY,
    pontuacao INTEGER,
    localizacao VARCHAR NOT NULL,
    quest_bdate date NOT NULL,
    locais_encontrados INTEGER NOT NULL,
    passos_em_metros DECIMAL (6,3) NOT NULL
);

create table locais (
    locais_id SERIAL NOT NULL CONSTRAINT locais_pkey PRIMARY KEY,
    coordenadas VARCHAR NOT NULL,
    nome VARCHAR NOT NULL,
    morada VARCHAR NOT NULL
);

create table fotos (
    fotos_id SERIAL NOT NULL CONSTRAINT fotos_pkey PRIMARY KEY,
    imagem VARCHAR NOT NULL
);

create table quest_locais (
    quest_locais_id SERIAL NOT NULL CONSTRAINT quest_locais_pkey PRIMARY KEY,
    quest_locais_quest_id SERIAL NOT NULL REFERENCES quest (quest_id) ON UPDATE CASCADE ON DELETE CASCADE,
    quest_locais_locais_id SERIAL NOT NULL REFERENCES locais (locais_id) ON UPDATE CASCADE ON DELETE CASCADE,
    timer DECIMAL (6,3) NOT NULL
);

create table locais_fotos (
    locais_fotos_id SERIAL NOT NULL CONSTRAINT locais_fotos_pkey PRIMARY KEY,
    locais_fotos_locais_id SERIAL NOT NULL REFERENCES locais (locais_id) ON UPDATE CASCADE ON DELETE CASCADE,
    locais_fotos_foto_id SERIAL NOT NULL REFERENCES fotos (fotos_id) ON UPDATE CASCADE ON DELETE CASCADE
);


create table user_quest (
    user_quest_id SERIAL NOT NULL CONSTRAINT user_quest_pkey PRIMARY KEY,
    user_quest_quest_id SERIAL NOT NULL REFERENCES quest (quest_id) ON UPDATE CASCADE ON DELETE CASCADE,
    user_quest_user_id SERIAL NOT NULL REFERENCES users (users_id) ON UPDATE CASCADE ON DELETE CASCADE
);


insert into users (users_name, users_password) values ('Roberta', '123');
insert into users (users_name, users_password) values ('Fausto', '123');
insert into users (users_name, users_password) values ('Mario', '123');
