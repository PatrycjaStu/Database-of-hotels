drop database if exists BazaHoteli;

CREATE DATABASE `BazaHoteli` ;
use BazaHoteli;

CREATE TABLE hotel(
id mediumint not null auto_increment,
Nazwa varchar(40),
Panstwo varchar(40),
Miasto varchar(40),
LiczbaGwiazdek nchar(1),
primary key (id));

CREATE TABLE pokoj(
id mediumint not null auto_increment,
NazwaHotelu varchar(40),
LiczbaOsob nchar(1),
IloscPokoi nchar(3),
Wolne nchar(3),
Cena DECIMAL(9,2),
Standard varchar(40),
primary key (id));

CREATE TABLE restauracja(
id mediumint not null auto_increment,
Nazwa varchar(40),
NazwaHotelu varchar(40),
Gwiazdki nchar(1),
Kucharz varchar(40),  #można usunąć
primary key (id));

CREATE TABLE menu(
id mediumint not null auto_increment,
Restauracja varchar(40),
Potrawa varchar(90),
CenaPosilku DECIMAL(9,2),
primary key (id));

CREATE TABLE barek(
id mediumint not null auto_increment,
Alkohol varchar(40),
CenaAlkoholu DECIMAL(9,2),
IloscAlkoholu int check(IloscAlkoholu>0),
PokojId int,
primary key (id));

CREATE TABLE goscie(
id mediumint not null auto_increment,
Imie varchar(40) NOT NULL,
Nazwisko varchar(40) NOT NULL,
NrDokumentu nchar(5) NOT NULL unique,
HotelId int,
PokojId int,
primary key (id));

CREATE TABLE rachunek(
id mediumint not null auto_increment,
Kto nchar(5) NOT NULL,
Co	varchar(40),
Ile int,
ZaIle DECIMAL(9,2),
primary key (id));

CREATE TABLE spa(
id mediumint not null auto_increment,
Zabieg varchar(40),
Cena DECIMAL(9,2),
HotelId int,
primary key (id));

insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Scandic','Polska','Wroclaw',4);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Acco','Szwecja','Sztokholm',2);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Nobis','Szwecja','Sztokholm',5);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Julieta','Hiszpania','Lloret de Mar',2);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Santa Ana','Hiszpania','Lloret de Mar',1);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Mary','Hiszpania','Lloret de Mar',1);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Premiere Classe','Polska','Wroclaw',3);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Orla','Polska','Miedzyzdroje',1);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Le Meridien','Zjednoczone Emiraty Arabskie','Dubai',5);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Ivan Chai','Rosja','Moskwa',2);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Corinthina','Rosja','Petersburg',5);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Hotel de Banville','Francja','Paryz',4);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('El Greco','Grecja','Heraklion',2);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Trend Suites','Turcja','Antalya',3);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Wadi Lahmy Azur Resort','Egipt','Abu Ghusun',3);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Giewont Aparthotel','Polska','Zakopane',2);
insert into hotel (Nazwa, Panstwo, Miasto, LiczbaGwiazdek) values ('Apartamenty Grunwaldzkie','Polska','Zakopane',2);

insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Scandic', 2, 8, 8, 377.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Scandic', 3, 5, 5, 567.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Acco', 6, 2, 2, 535.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Acco', 1, 4, 3, 256.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Nobis', 2, 8, 8, 2235.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Nobis', 2, 1, 0, 12461.00, 'Exclusive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Julieta', 2, 12, 11, 164.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Julieta', 3, 5, 5, 246.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Santa Ana', 2, 8, 8, 200.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Santa Ana', 3, 10, 10, 240.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Mary', 2, 7, 7, 147.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Mary', 2, 5, 4, 164.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Mary', 1, 5, 5, 120.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Premiere Classe', 2, 9, 9, 144.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Premiere Classe', 2, 5, 5, 160.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Orla', 4, 2, 2, 246.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Orla', 2, 7, 6, 210.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Orla', 2, 6, 6, 230.00, 'Exclusive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Le Meridien', 2, 6, 6, 522.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Le Meridien', 2, 3, 3, 755.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Le Meridien', 2, 2, 2, 1025.00, 'Exclusive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Ivan Chai', 2, 5, 5, 313.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Ivan Chai', 2, 5, 5, 355.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Corinthina', 2, 10, 10, 3368.00, 'Exclusive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Hotel de Banville', 4, 4, 4, 1100.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Hotel de Banville', 3, 5, 5, 859.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Hotel de Banville', 2, 4, 2, 868.00, 'Exclusive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('El Greco', 3, 6, 6, 244.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Trend Suites', 4, 8, 8, 496.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Trend Suites', 2, 10, 10, 396.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Wadi Lahmy Azur Resort', 2, 15, 15, 166.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Wadi Lahmy Azur Resort', 3, 11, 11, 255.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Giewont Aparthotel', 2, 3, 3, 576.00, 'Exclusive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Giewont Aparthotel', 2, 6, 6, 482.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Apartamenty Grunwaldzkie', 4, 11, 10, 380.00, 'Standard');

insert into restauracja (Nazwa, NazwaHotelu, Gwiazdki, Kucharz) values ('Boullon Chartier','Hotel de Banville',2,'Gordon Ramsay');
insert into restauracja (Nazwa, NazwaHotelu, Gwiazdki, Kucharz) values ('Patio','Scandic',3, 'Magda Gesler');
insert into restauracja (Nazwa, NazwaHotelu, Gwiazdki, Kucharz) values ('Novocaina','Scandic',1, 'Robert Maklowicz');
insert into restauracja (Nazwa, NazwaHotelu, Gwiazdki, Kucharz) values ('Neptun','Mary',1,'Jamie Oliver');
insert into restauracja (Nazwa, NazwaHotelu, Gwiazdki, Kucharz) values ('Birch','Ivan Chai',1, 'Nigella Lawson');

insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Slimaki',25.30, 'Boullon Chartier');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Udko z kaczki z pieczonymi ziemniakami',39.80, 'Boullon Chartier');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Czekoladowy suflet',12.60, 'Boullon Chartier');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Czerwone wino',42.20, 'Boullon Chartier');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Krem z mlodego szczawiu z jajkiem przepiorczym',14.00, 'Patio');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Tarta z mlodym szpinakiem, lomnicka chalwa serowa i pomidorkami',22.00, 'Patio');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Roladki z grillowanego baklazana',35.00, 'Patio');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Żurek staropolski podawany w chlebie',16.00, 'Patio');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Krewetki z salsa awokado',40.00, 'Novocaina');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Salatka z kurczakiem',23.00, 'Novocaina');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Stek z antrykotu marmurkowego',75.00, 'Novocaina');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Krewetki piri piri',39.00, 'Neptun');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Osmiornica po galicyjsku',29.00, 'Neptun');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Solanka miesna',16.90, 'Birch');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Juszka grzybowa z haluszkami',15.90, 'Birch');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Deruny',17.90, 'Birch');
insert into menu (Potrawa, CenaPosilku, Restauracja) values ('Pelmeni z miesem',22.90, 'Birch');

insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 1);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 4, 1);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 2, 1);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 2);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 6, 2);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 3, 2);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 85.00, 2, 3);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Tyskie', 3.20, 10, 3);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kadarka', 19.00, 3, 3);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 85.00, 1, 4);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Tyskie', 3.20, 2, 4); 
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kadarka', 19.00, 1, 4);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Jack Daniels', 142.80, 2, 5);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Desperados', 6.20, 6, 5);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Barolo', 130.00, 2, 5);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Jack Daniels', 142.80, 4, 6);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Desperados', 6.20, 12, 6);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Barolo', 130.00, 4, 6);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Pan Tadeusz', 40.00, 2, 6);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 9);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 3, 9);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kadarka', 19.00, 1, 9);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 10);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 3, 10);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kadarka', 19.00, 1, 10);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 11);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 2, 11);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kadarka', 19.00, 1, 11);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 13);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 2, 13);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kadarka', 19.00, 1, 13);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Jack Daniels', 142.80, 2, 12);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Desperados', 6.20, 4, 12);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Barolo', 130.00, 2, 12);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 15);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 4, 15);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 2, 15);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 17);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 4, 17);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 2, 17);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Jack Daniels', 142.80, 4, 18);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Desperados', 6.20, 12, 18);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Barolo', 130.00, 4, 18);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Pan Tadeusz', 40.00, 2, 18);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 19);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 2, 19);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kadarka', 19.00, 1, 19);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 20);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 4, 20);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 2, 20);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Jack Daniels', 142.80, 4, 21);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Desperados', 6.20, 12, 21);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Barolo', 130.00, 4, 21);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Pan Tadeusz', 40.00, 2, 21);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Jack Daniels', 142.80, 4, 24);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Desperados', 6.20, 12, 24);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Barolo', 130.00, 4, 24);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Pan Tadeusz', 40.00, 2, 24);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 2, 25);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 8, 25);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 4, 25);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 2, 26);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 6, 26);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 4, 26);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Jack Daniels', 142.80, 4, 27);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Desperados', 6.20, 12, 27);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Barolo', 130.00, 4, 27);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Pan Tadeusz', 40.00, 2, 27);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 31);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 4, 31);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 2, 31);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 32);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 4, 32);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 2, 32);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 2, 33);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 6, 33);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 4, 33);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Jack Daniels', 142.80, 4, 34);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Desperados', 6.20, 12, 34);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Barolo', 130.00, 4, 34);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Pan Tadeusz', 40.00, 2, 34);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Johnnie Walker', 80.00, 1, 35);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Kasztelan', 4.50, 4, 35);
insert into barek (Alkohol, CenaAlkoholu, IloscAlkoholu, PokojId) values ('Carlo Rossi', 24.30, 0, 35);

insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Anna','Nowak',12345,2,4);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('John','Jameson',24589,4,7);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Eveline','Jameson',35278,4,7);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Anna','Nowak',58714,17,35);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Edyta','Wojcik',23481,17,35);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Beata','Wisniewska',22485,17,35);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Magdalena','Okarma',23487,17,35);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Peter','Trade',47596,12,27);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Maggy','Trade',43528,12,27);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Patrycja','Studzienna',47511,3,6);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Marek','Wisniewski',66223,3,6);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Anna','Lewandowska',54322,6,12);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Aleksander','Lewandowski',14447,6,12);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Klaudia','Nowak',74744,8,17);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Klaudia','Kowalska',47477,8,17);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Mary','Wilson',47456,12,27);
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Josh','Wilson',45832,12,27);

insert into rachunek (Kto, Co, Ile, ZaIle) values (12345, 'Pokoj', 1, 256.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (24589, 'Pokoj', 1, 164.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (35278, 'Pokoj', 1, 164.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (58714, 'Pokoj', 1, 380.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (23481, 'Pokoj', 1, 380.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (22485, 'Pokoj', 1, 380.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (23487, 'Pokoj', 1, 380.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (47596, 'Pokoj', 1, 868.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (43528, 'Pokoj', 1, 868.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (47511, 'Pokoj', 1, 12461.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (66223, 'Pokoj', 1, 12461.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (54322, 'Pokoj', 1, 164.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (14447, 'Pokoj', 1, 164.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (74744, 'Pokoj', 1, 210.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (47477, 'Pokoj', 1, 210.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (47456, 'Pokoj', 1, 868.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (45832, 'Pokoj', 1, 868.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (45832, 'Barolo', 2, 130.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (23487, 'Johnnie Walker', 1, 80.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (47511, 'Desperados', 4, 6.20);
insert into rachunek (Kto, Co, Ile, ZaIle) values (47456, 'Udko z kaczki z pieczonymi ziemniakami', 2, 39.80);
insert into rachunek (Kto, Co, Ile, ZaIle) values (54322, 'Krewetki piri piri', 3, 39.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (54322, 'Osmiornica po galicyjsku', 2, 29.00);

insert into spa (Zabieg, Cena, HotelId) values ('Masaz', 90.00, 7);
insert into spa (Zabieg, Cena, HotelId) values ('Masaz', 115.00, 11);
insert into spa (Zabieg, Cena, HotelId) values ('Masaz', 60.00, 6);
insert into spa (Zabieg, Cena, HotelId) values ('Sauna', 20.00, 6);
insert into spa (Zabieg, Cena, HotelId) values ('Sauna', 25.00, 7);
insert into spa (Zabieg, Cena, HotelId) values ('Sauna', 25.00, 12);
insert into spa (Zabieg, Cena, HotelId) values ('Sauna', 20.00, 2);
insert into spa (Zabieg, Cena, HotelId) values ('Kapiel blotna', 30.00, 12);
insert into spa (Zabieg, Cena, HotelId) values ('Kapiel blotna', 35.00, 2);
insert into spa (Zabieg, Cena, HotelId) values ('Kapiel blotna', 35.00, 9);
insert into spa (Zabieg, Cena, HotelId) values ('Kapiel blotna', 45.00, 11);
insert into spa (Zabieg, Cena, HotelId) values ('Maseczka', 5.00, 17);
insert into spa (Zabieg, Cena, HotelId) values ('Maseczka', 15.00, 8);
insert into spa (Zabieg, Cena, HotelId) values ('Maseczka', 10.00, 12);
insert into spa (Zabieg, Cena, HotelId) values ('Manicure', 80.00, 14);
insert into spa (Zabieg, Cena, HotelId) values ('Manicure', 50.00, 6);
insert into spa (Zabieg, Cena, HotelId) values ('Manicure', 50.00, 17);
insert into spa (Zabieg, Cena, HotelId) values ('Pedicure', 90.00, 6);
insert into spa (Zabieg, Cena, HotelId) values ('Pedicure', 60.00, 17);

insert into rachunek (Kto, Co, Ile, ZaIle) values (47511, 'Pedicure', 1, 90.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (47477, 'Manicure', 1, 50.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (47477, 'Maseczka', 2, 5.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (66223, 'Masaz', 2, 60.00);
insert into rachunek (Kto, Co, Ile, ZaIle) values (66223, 'Sauna', 1, 20.00);

/*
select * from hotel;
select * from pokoj;
select * from restauracja;
select * from menu;
select * from barek;
select * from goscie;
select * from rachunek;
select * from spa;
*/
#1: Jeśli gość usunięty z tabeli 'goscie', to jego pokój staje się wolny. 
#OK
drop trigger if exists delgosc;
delimiter $$
create trigger delgosc after delete on goscie
for each row begin 
update pokoj inner join goscie 
set wolne=wolne+1 where pokoj.id=goscie.pokojid;
end$$

select * from goscie where nrdokumentu=45832;
select * from pokoj
SET SQL_SAFE_UPDATES = 0;
delete from goscie where nrdokumentu=45832 and id=17;
SET SQL_SAFE_UPDATES = 1;



#2: Jeśli sprzedano alkohol, to zmniejszamy jego ilość w tabeli 'barek'.
drop procedure Osoba;

DELIMITER $$
create procedure Osoba (OUT p int, I int)
begin
declare dok int;
select kto INTO dok
from rachunek
where rachunek.id = I;
select pokojid into p
from goscie 
where goscie.nrdokumentu=dok;
end$$
DELIMITER ;

drop procedure Alk;

DELIMITER $$
create procedure Alk (OUT a nvarchar(40), I int)
begin
select co INTO a
from rachunek
where rachunek.id = I;
end$$
DELIMITER ;

drop trigger if exists alkohol;
delimiter $$
create trigger alkohol after insert on rachunek
for each row begin 
set @i = (select max(id) from rachunek);
call Osoba(@p,@i);
call Alk(@a,@i);
update barek
set iloscalkoholu=iloscalkoholu-1 where barek.pokojid=@p and barek.alkohol=@a;
end$$

select * from goscie;
select * from rachunek;
select * from barek;
SET SQL_SAFE_UPDATES = 0;
insert into rachunek (Kto, Co, Ile, ZaIle) values (47511, 'Desperados', 4, 6.20);

#3: Jeśli usuwamy hotel, to usuwamy jego pokoje, restauracje, spa.
#OK
drop trigger if exists delhotel;
delimiter $$
create trigger delhotel after delete on hotel
for each row 
	begin 
		delete from pokoj where pokoj.nazwahotelu not in (select nazwa from hotel);
        delete from spa where spa.hotelid not in (select id from hotel);
        delete from restauracja where restauracja.nazwahotelu not in (select nazwa from hotel);
    end $$
delimiter ;
SET SQL_SAFE_UPDATES = 0;
delete from hotel where id=10;
SET SQL_SAFE_UPDATES = 1;

# 4 podzieliłam na dwa
#OK
drop trigger if exists delpokoj;
delimiter $$
create trigger delpokoj after delete on pokoj
for each row 
	begin 
		delete from barek where barek.pokojid not in (select id from pokoj);
    end $$
delimiter ;
select * from pokoj;
select * from barek;
SET SQL_SAFE_UPDATES = 0;
delete from pokoj where id=3;
SET SQL_SAFE_UPDATES = 1;


#5: Obliczamy całkowitą cenę dla klienta. 
#OK
select Kto as NrDokumentu, sum(Ile*ZaIle) as Cena from rachunek group by Kto;
#opcja 2 jako funkcja
#OK

drop function Cena;

DELIMITER $$
create function Cena (dok int)
returns DECIMAL(9,2)
begin
declare cena DECIMAL(9,2);
select sum(Ile*ZaIle) INTO cena
from rachunek
where kto = dok;
return cena;

end$$
DELIMITER ;
select * from rachunek where kto=47511;
set @c = Cena(47511);
select @c;

#6: Widok: Wszystkie zabiegi spa, hotele, restauracje dla danego miasta. 
#OK
drop view if exists widok1;
create view widok1 as 
select hotel.miasto, hotel.nazwa, spa.zabieg, restauracja.nazwa as nazwarestauracji from restauracja
right join hotel on restauracja.nazwahotelu=hotel.nazwa
left join spa on hotel.id=spa.hotelid;

select * from widok1;

#7: Widok: Wszystkie pokoje w hotelach poniżej podanej ceny. 
#OK
drop view if exists widok2;
create view widok2 as 
select hotel.nazwa as nazwahotelu,hotel.miasto, pokoj.standard, pokoj.wolne, pokoj.cena from pokoj
inner join hotel on pokoj.nazwahotelu=hotel.nazwa
and pokoj.cena<250.00;

select * from widok2;

#8: Jeśli dodajemy osobę do tabeli 'goscie', to aktualizujemy tabele 'rachunek' i 'pokoje'.
#OK
drop trigger if exists trgrachunek;
delimiter $$
create trigger trgrachunek after insert on goscie /*inner join spa inner join barek inner join menu inner join goscie*/ 
for each row begin
insert into rachunek set rachunek.kto=(select nrdokumentu from goscie where goscie.id=(select max(id) from goscie)), rachunek.co='pokoj', rachunek.ile=1, rachunek.zaile=(select cena from pokoj where pokoj.id=(select pokojid from goscie where goscie.id=(select max(id) from goscie))) ;
end$$

insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Make','Jason',45822,12,24);


select *from pokoj;
select * from rachunek;
select * from goscie;

#9: Nie można dodać gościa do pokoju, jeśli pokój nie jest wolny.
#OK
drop trigger if exists tr9;
delimiter $$
create trigger tr9 before insert on goscie 
for each row
	begin 
    declare specialty condition for sqlstate '45000';
    if exists(select * from goscie inner join pokoj
    on pokoj.id = goscie.pokojid and pokoj.wolne='0') = 1 then
			signal sqlstate '45000' set message_text = 'Nie ma wolnych tego typu pokoi', mysql_errno = 1001;
	end if;
end $$

select * from pokoj;
insert into goscie (Imie, Nazwisko, NrDokumentu, HotelId, PokojId) values ('Patrycja','Markowska',22255,3,6);

#10: Nie można kupić więcej alkoholu, niż jest w pokoju.
#OK
drop trigger if exists tr10;
delimiter $$
create trigger tr10 before update on barek 
for each row
	begin 
    declare specialty condition for sqlstate '45000';
    if exists(select * from barek where iloscalkoholu='0') = 1 then
			signal sqlstate '45000' set message_text = 'Skończył się ten alkohol w Państwa pokoju', mysql_errno = 1001;
	end if;
end $$

SET SQL_SAFE_UPDATES = 0;
update barek set iloscalkoholu=iloscalkoholu-1 where alkohol='Carlo Rossi' and pokojid='35';
SET SQL_SAFE_UPDATES = 1;