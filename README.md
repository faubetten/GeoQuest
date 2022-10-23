# GeoQuest
Repositório do projeto de engenharia informática

# Projeto criado por:

Fausto Bettencourt, 20210819

João Marques, 20210408

Roberta Santos, 20211091

# Introdução:

A aplicação é um jogo inspirado no Geoguesser, jogo geográfico que consiste em identificar diferentes locais do mundo através de imagens. Já o GeoQuest é um jogo que faz com que o seu utilizador conheça melhor o espaço a sua volta através de imagens, onde o mesmo tem de encontrar essas localizações.

O jogador poderá escolher entre três modos de jogo diferentes: Short Game (10 minutos de duração), Normal Game (30 minutos de duração), Long Game (60 minutos de duração) e poderá cancelar o jogo a qualquer momento.

Para cada modo de jogo existirá um sistema de leaderboards, em que os jogadores podem submeter e comparar as suas pontuações. A pontuação atribuída será dependente da quantidade de locais encontrados, como também a distância percorrida (em metros) durante o jogo.

Devido ao tipo de jogo a aplicação só estará disponível em dispositivos móveis.


# Objetivos:

A pandemia com todas as sua restrições e regras de confinamento, o turismo e a saúde foram as áreas mais afetadas. O turismo teve uma drástica diminuição e a saúde completamente calamitosa.

Agora com as coisas a voltarem à normalidade o turismo tem tido um grande aumento, mas em termos de saúde, o sedentarismo tem aumentado em níveis exponenciais, trazendo todas as suas consequências para a população.

Mas ao GeoQuest vem para ajudar, pois tem como objetivo incentivar o seu utilizador a movimentar-se e melhorar o seu condicionamento físico bem como conhecer melhor a cidade de Lisboa. 

O GeoQuest é um jogo que une o bem-estar e o prazer de sightseeing ao redor da cidade de Lisboa. É uma app que incentiva o seu utilizador a conhecer o ambiente a sua volta. Através de imagens de locais de uma determinada área, onde o mesmo é desafiado a encontrar o máximo de localizações para que possa acumular o máximo de pontos.

Desta forma a aplicação incentiva a prática de hábitos saudáveis, estimula o turismo ao redor de pontos icónicos da capital lusitana, proporcionando um aumento do turismo da região.


# Publico Alvo:

O público alvo do GeoQuest são jovens adultos entusiastas de desportos ao ar livre.

Foco nas faixas etárias dos 18-24 e dos 25-34 com uma distribuição espectada representada no gráfico. 


# Pesquisa de Mercado:

Geoguessr.com

-Geoguessr é um jogo que consiste em encontrar a localização onde uma imagem do google street view foi tirada através de características da zona tais como edifícios, sinais, flora, etc. Este jogo serve como a base do conceito da nossa aplicação, encontrar o local representado na imagem através de pistas retiradas da mesma.

Geocaching.com

-Geocaching.com é um website que facilita a atividade de Geocaching. Este visa a facilitar o upload de localizações de novas caches para os seus utilizadores encontrarem. Este website relaciona-se ao nosso projeto na medida em que, tal como a nossa app incentiva os seus utilizadores a andarem até ao local marcado para obterem pontos.

FitPotato

-FitPotato é uma app que paga aos seus utilizadores por estes andarem, correrem ou apenas passearem o seu animal de estimação. Esta funciona como um pedómetro, dependendo do número de passos dados, maior será a recompensa. Esta app, bem como a nossa incentiva os seus utilizadores a darem passos e, assim, terem melhor práticas de saúde.

# Guiões:
Guião 1 (Core):

O João, de 22 anos, é um turista inglês que está a passar férias em Portugal. Interessado em conhecer melhor a cidade de Lisboa, ele decide instalar o GeoQuest e fazer um jogo rápido de 10 minutos.

Assumindo que este já tem uma conta GeoQuest registado, o processo seria:

Passo 1: Inicialização da aplicação

Passo 2: O utilizador faz login na sua conta GeoQuest ao digitar o seu nome de utilizador e palavra-passe 

Passo 3: O utilizador seleciona a opção "Start Game"

Passo 4: O utilizador seleciona o modo de jogo "Short Game"

Passo 5: O utilizador joga durante 10 minutos

Passo 6: O jogo acaba e é apresentada a pontuação final ao utilizador consoante a sua performance

Guião 2 (Leaderboard):

A Maria, de 18 anos, que utiliza o GeoQuest frequentemente, acabou de bater o seu recorde de pontuação, e quer verificar o seu lugar na leaderboard.

Assumindo que o modo de jogo que o utilizado jogou foi o "Long Game", o processo seria:

Passo 1: Inicialização da aplicação

Passo 2: O utilizador faz login na sua conta GeoQuest ao digitar o seu nome de utilizador e palavra-passe

Passo 3: O utilizador seleciona a opção "Leaderboards"

Passo 4: O utilizador seleciona o modo de jogo "Long Game"

Passo 5: É apresentada a leaderboard do modo de jogo "Long Game" ao utilizador, com destaque à sua pontuação

Guião 3 (Registo):

O Roberto, de 25 anos, foi recomendado o GeoQuest por um amigo como uma maneira divertida de fazer exercício físico. Como é a primeira fez que usa o GeoQuest, ele quer registar uma nova conta.

O processo seria:

Passo 1: Inicialização da aplicação

Passo 2: O utilizador seleciona a opção "Register a GeoQuest account"

Passo 3: O utilizador introduz o nome de utilizador e palavra-passe que quer ter

Passo 4: O utilizador faz login na sua nova conta GeoQuest pela primeira fez

# Descrição da solução a implementar:

Primeiramente o utilizador tem de fazer o login na app, escolher um nome de utilizador e uma palavra-passe. Após a conexão ao jogo, o mesmo ira escolher o modo que deseja, e o programa vai recolher as imagens, localizações e coordenadas para disponibilizar ao utilizador. 

Será usada a funcionalidade de localização do dispositivo para determinar os locais durante o jogo e as imagens presentes nas bases de dados serão retiradas pelos autores.

Durante o jogo será mostrada a imagem do local como também um mapa da atual localização do jogador, o mesmo dirigir-se-á ao máximo de pontos que conseguir.

A pontuação será cotada através da distância percorrida (em metros) e a quantidade de locais encontrados dentro do tempo limite. A leaderboard ira utilizar todas as pontuações presentes na base de dados.
 


# Enquadramento nas disciplinas:

Base de dados: criaremos bases de dados para armazenamento e controle dos dados dos utilizadores, as imagens utilizadas no jogo bem como todas as pontuações obtidas na app.

Programação Orientada a Objetos: iremos formular um servidor em linguagem Java, onde o mesmo servirá como canal entre a base de dados e a aplicação móvel. 

Programação de Dispositivos Móveis: será produzida uma aplicação móvel, neste caso um jogo, e vai ser por este meio que utilizador terá acesso ao mesmo.

Competências comunicacionais: utilizaremos dos ensinamentos lecionados em sala de aula, para uma melhora na performance nas apresentações.


# Requisitos Técnicos:

Linguagem Java para produção da BackendAPI e também para a aplicação móvel.

Linguagem SQL para formulação e manutenção das bases de dados.

# Arquitetura da solução:

Para um bom funcionamento do jogo é essencial um bom desempenho destes três segmentos: as bases de dados, a BackendAPI e a aplicação móvel. A base de dados tem de ser ampla pois vários dados terão de ser armazenados, tal como o servidor pois o jogo funcionada com localizações que estão sempre em mudança, a app móvel para deixar tudo disponível para o utilizador.

# Tecnologias a Utilizar:

As tecnologias utilizadas para a produção deste jogo são: a linguagem Java e a linguagem SQL para o servidor e para as bases de dados respetivamente. E serão também utilizadas como ferramentas de suporte o SpringBoot, o Postgre e o Android Studio.



Primeira proposta: Documentos>g04-proposta-v1.pdf

Segunda Proposta: Documentos>g04-proposta-v2.pdf
