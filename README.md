# GeoQuest
Repositório do projeto de engenharia informática

# Projeto criado por:

Fausto Bettencourt, 20210819

João Marques, 20210408

Roberta Santos, 20211091

# Introdução:

A aplicação é um jogo inspirado no Geoguesser, jogo geográfico que consiste em identificar diferentes locais do mundo através de imagens. Já o GeoQuest é um jogo que faz com que o seu utilizador conheça melhor o espaço a sua volta através de imagens, onde o mesmo tem de encontrar.

O jogador poderá escolher entre três modos de jogo diferentes: Short Game (10 minutos de duração), Normal Game (30 minutos de duração), Long Game (60 minutos de duração) e poderá cancelar o jogo a qualquer momento.

Para cada modo de jogo existirá um sistema de leaderboards, em que os jogadores podem submeter e comparar as suas pontuações. A pontuação atribuída será dependente da quantidade de locais encontrados, como também a distância percorrida (em metros) durante o jogo.
Devido ao tipo de jogo a aplicação só estará disponível em dispositivos móveis.

# Objetivos:

O GeoQuest é um jogo que une o bem-estar e o prazer de sightseeing ao redor da cidade de Lisboa. É uma app que incentiva o seu utilizador a conhecer o ambiente a sua volta. Através de imagens de locais de uma determinada área, o mesmo é desafiado a encontrar o máximo de localizações para que possa acumular o máximo de pontos.

Desta forma a aplicação incentiva a prática de hábitos saudáveis, estimula o turismo ao redor de pontos icónicos na cidade de Lisboa, proporcionando o turismo da região.

# Publico Alvo:

Foco nas faixas etárias dos 18-24 e dos 25-34 com uma distribuição espectada representada no gráfico. A distribuição por género é projetada ser 50/50 entre masculino e feminino.


# Pesquisa de Mercado:

Geoguessr.com

-Geoguessr é um jogo que consiste em encontrar a localização onde uma imagem do google street view foi tirada através de características da zona tais como edifícios, sinais, flora, etc. Este jogo serve como a base do conceito da nossa aplicação, encontrar o local representado na imagem através de pistas retiradas da mesma.

Geocaching.com

-Geocaching.com é um website que facilita a atividade de Geocaching. Este visa a facilitar o upload de localizações de novas caches para os seus utilizadores encontrarem. Este website relaciona-se ao nosso projeto na medida em que, tal como a nossa app incentiva os seus utilizadores a andarem até ao local marcado para obterem pontos.

FitPotato

-FitPotato é uma app que paga aos seus utilizadores por estes andarem, correrem ou apenas passearem o seu animal de estimação. Esta funciona como um pedómetro, dependendo do número de passos dados, maior será a recompensa. Esta app, bem como a nossa incentiva os seus utilizadores a darem passos e, assim, terem melhor práticas de saúde.

# Guiões:
Guião 1 (Core):
Um utilizador, que usa a aplicação frequentemente, pretende iniciar um jogo de GeoQuest com 10 minutos de duração. 
Assumindo que este já tem uma conta GeoQuest registado, o processo seria:

Passo 1: Inicialização da aplicação

Passo 2: O utilizador faz login na sua conta GeoQuest ao digitar o seu nome de utilizador e palavra-passe 

Passo 3: O utilizador seleciona a opção "Start Game"

Passo 4: O utilizador seleciona o modo de jogo "Short Game"

Passo 5: O utilizador joga durante 10 minutos

Passo 6: O jogo acaba e é apresentada a pontuação final ao utilizador consoante a sua performance

Guião 2 (Leaderboard):
Um utilizador que acabou de bater o seu recorde de pontuação quer verificar o seu lugar na leaderboard. 
Assumindo que o modo de jogo que o utilizado jogou foi o "Long Game", o processo seria:

Passo 1: Inicialização da aplicação
Passo 2: O utilizador faz login na sua conta GeoQuest ao digitar o seu nome de utilizador e palavra-passe

Passo 3: O utilizador seleciona a opção "Leaderboards"

Passo 4: O utilizador seleciona o modo de jogo "Long Game"

Passo 5: É apresentada a leaderboard do modo de jogo "Long Game" ao utilizador, com destaque à sua pontuação

Guião 3 (Registo):
Um utilizador que instalou a aplicação pela primeira fez quer registar uma nova conta GeoQuest.
O processo seria:

Passo 1: Inicialização da aplicação
Passo 2: O utilizador seleciona a opção "Register a GeoQuest account"

Passo 3: O utilizador introduz o nome de utilizador e palavra-passe que quer ter

Passo 4: O utilizador faz login na sua nova conta GeoQuest pela primeira fez

# Descrição da solução a implementar:

Primeiramente o utilizador tem de fazer o login na app, tem de escolher um nome de utilizador e uma palavra-passe.
Após a conexão ao jogo, o mesmo ira escolher o modo que deseja, e o programa irá direcionar-se para a base de dados de modo a recolher as imagens, localizações e coordenadas lá presentes. Será usada a funcionalidade de localização do dispositivo para determinar os locais durante o jogo e as imagens presentes nas bases de dados serão retiradas pelos autores.

Durante o jogo será mostrada a imagem do local como também um mapa da atual localização do jogador, o mesmo dirigir-se-á ao máximo de pontos que conseguir.
A pontuação será cotada através da distância percorrida (em metros) e a quantidade de locais encontrados dentro do tempo limite. A leaderboard ira utilizar todas as pontuações presentes na base de dados.

As tecnologias utilizadas para a produção desta aplicação são as mesmas que foram lecionadas em sala de aula, tais como: pg admin, postgre para a modelação e utilização das bases de dados; java para toda a parte da programação orientada a objetos e o android studio para a criação da app na disciplina, programação móvel. 


# Enquadramento nas disciplinas:
Base de dados -> Desenvolvimento e manutenção das Bases de dados do projeto

Programação orientada a objetos -> Programação e desenvolvimento do servidor do projeto

Programação de dispositivos móveis -> Programação e desenvolvimento da própria app

Competências Comunicacionais -> Desenvolvimento de habilidades comunicacionais para as apresentações do projeto




Primeira proposta: Documentos>g04-proposta-t2.pdf
