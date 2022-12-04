create table users (
    users_id SERIAL NOT NULL CONSTRAINT user_pkey PRIMARY KEY,
    users_name VARCHAR NOT NULL,
    users_password VARCHAR NOT NULL
);

-- Add categories users
comment on column users.users_id is 'The user''s id';
comment on column users.users_name is 'The user''s name';
comment on column users.users_password is 'The user''s password';

create table quest (
    quest_id SERIAL NOT NULL CONSTRAINT quest_pkey PRIMARY KEY,
    pontuacao INTEGER,
    localizacao VARCHAR NOT NULL,
    quest_bdate date NOT NULL,
    locais_encontrados INTEGER NOT NULL,
    passos_em_metros DECIMAL (6,3) NOT NULL
);

-- Add categories quest
comment on column quest.quest_id is 'The quest''s id';
comment on column quest.pontuacao is 'The quest''s id';
comment on column quest.localizacao is 'The quest''s location';
comment on column quest.locais_encontrados is 'The number of locations found';

create table locais (
    locais_id SERIAL Not NULL CONSTRAINT locais_pkey PRIMARY KEY,
    coordenadas VARCHAR NOT NULL,
    nome VARCHAR NOT NULL
);

-- Add categories locais
comment on column locais.locais_id is 'The local''s id';
comment on column locais.coordenadas is 'The local''s coordinates';
comment on column locais.nome is 'The local''s name';

create table fotos (
    fotos_id SERIAL NOT NULL CONSTRAINT fotos_pkey PRIMARY KEY,
    imagem VARCHAR NOT NULL
);

-- Add categories fotos
comment on column fotos.fotos_id is 'The photo''s id';
comment on column fotos.imagem is 'The image';


create table quest_locais (
    quest_locais_id SERIAL NOT NULL CONSTRAINT quest_locais_pkey PRIMARY KEY,
    quest_locais_quest_id SERIAL NOT NULL REFERENCES quest (quest_id) ON UPDATE CASCADE ON DELETE CASCADE,
    quest_locais_locais_id SERIAL NOT NULL REFERENCES locais (locais_id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Add categories quest_locais
comment on column quest_locais.quest_locais_id is 'The id of the locations used in the quest';
comment on column quest_locais.quest_locais_quest_id is 'The id of locations used in the quest related to the id of the quest';
comment on column quest_locais.quest_locais_locais_id is 'The id of the locations used in the quest related to the id of the locations';

create table locais_fotos (
    locais_fotos_id SERIAL NOT NULL CONSTRAINT locais_fotos_pkey PRIMARY KEY,
    locais_fotos_locais_id SERIAL NOT NULL REFERENCES locais (locais_id) ON UPDATE CASCADE ON DELETE CASCADE,
    locais_fotos_foto_id SERIAL NOT NULL REFERENCES fotos (fotos_id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Add categories locais_fotos
comment on column locais_fotos.locais_fotos_id is 'The id of the location''s photos';
comment on column locais_fotos.locais_fotos_locais_id is 'The id of the location''s photos related to the location''s id';
comment on column locais_fotos.locais_fotos_foto_id is 'The id of the location''s photos related to the photo''s id';


create table user_quest (
    user_quest_id SERIAL NOT NULL CONSTRAINT user_quest_pkey PRIMARY KEY,
    user_quest_quest_id SERIAL NOT NULL REFERENCES quest (quest_id) ON UPDATE CASCADE ON DELETE CASCADE,
    user_quest_user_id SERIAL NOT NULL REFERENCES users (users_id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Add categories user_quest
comment on column user_quest.user_quest_id is 'The id of the quest played by the user';
comment on column user_quest.user_quest_quest_id is 'The id of the quest played by the user related to the quest''s id';
comment on column user_quest.user_quest_user_id is 'The id of the quest played by the user related to the user''s id';


insert into users (users_name, users_password) values ('Roberta', '123');
insert into users (users_name, users_password) values ('Fausto', '123');
insert into users (users_name, users_password) values ('Mario', '123');
insert into locais (nome, coordenadas) values ('Museu do Oriente', '38.7031010386998,-9.171026243031786');
insert into locais (nome, coordenadas) values ('Museu Nacional de Arte Antiga', '38.70495139178823,-9.161488308271545');
insert into locais (nome, coordenadas) values ('Jardim 9 de Abril', '38.704444,-9.162722');
insert into locais (nome, coordenadas) values ('Museu da Marioneta', '38.70810028885371,-9.155775935408098');
insert into locais (nome, coordenadas) values ('Jardim Lisboa Antiga', '38.711817422588005,-9.154456254923248');
insert into locais (nome, coordenadas) values ('Time Out Market Lisboa', '38.70722497680704,-9.145978830266364');
insert into locais (nome, coordenadas) values ('Museu das Comunicações', '38.70792824352956,-9.15043129703937');
insert into locais (nome, coordenadas) values ('Green Street Lisbon', '38.709267780011,-9.152416131917786');
insert into locais (nome, coordenadas) values ('Museu da Farmácia', '38.71025985761974,-9.147164337525124');
insert into locais (nome, coordenadas) values ('Praça Luís de Camões', '38.71074544864401,-9.143452124801652');
