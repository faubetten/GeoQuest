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
    locais_id SERIAL NULL CONSTRAINT locais_pkey PRIMARY KEY,
    coordenadas VARCHAR NOT NULL,
    nome VARCHAR NOT NULL,
    morada VARCHAR NULL
);

create table fotos (
    fotos_id SERIAL NOT NULL CONSTRAINT fotos_pkey PRIMARY KEY,
    imagem VARCHAR NOT NULL
);

create table quest_locais (
    quest_locais_id SERIAL NOT NULL CONSTRAINT quest_locais_pkey PRIMARY KEY,
    quest_locais_quest_id SERIAL NOT NULL REFERENCES quest (quest_id) ON UPDATE CASCADE ON DELETE CASCADE,
    quest_locais_locais_id SERIAL NOT NULL REFERENCES locais (locais_id) ON UPDATE CASCADE ON DELETE CASCADE,
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
insert into locais (locais_nome, locais_coordenadas) values ('Museu do Oriente', '38.7031010386998', '-9.171026243031786');
insert into locais (locais_nome, locais_coordenadas) values ('Museu Nacional de Arte Antiga', '38.70495139178823', '-9.161488308271545');
insert into locais (locais_nome, locais_coordenadas) values ('Jardim 9 de Abril', '38.704444', '-9.162722');
insert into locais (locais_nome, locais_coordenadas) values ('Museu da Marioneta', '38.70810028885371', '-9.155775935408098');
insert into locais (locais_nome, locais_coordenadas) values ('Jardim Lisboa Antiga', '38.711817422588005', '-9.154456254923248');
insert into locais (locais_nome, locais_coordenadas) values ('Time Out Market Lisboa', '38.70722497680704', '-9.145978830266364');
insert into locais (locais_nome, locais_coordenadas) values ('Museu das Comunicações', '38.70792824352956', '-9.15043129703937');
insert into locais (locais_nome, locais_coordenadas) values ('Green Street Lisbon', '38.709267780011', '-9.152416131917786');
insert into locais (locais_nome, locais_coordenadas) values ('Museu da Farmácia', '38.71025985761974', '-9.147164337525124');
insert into locais (locais_nome, locais_coordenadas) values ('Praça Luís de Camões', '38.71074544864401', '-9.143452124801652');
