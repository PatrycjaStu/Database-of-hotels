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
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Acco', 1, 4, 4, 256.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Nobis', 2, 8, 8, 2235.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Nobis', 2, 1, 1, 12461.00, 'Executive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Julieta', 2, 12, 12, 164.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Julieta', 3, 5, 5, 246.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Santa Ana', 2, 8, 8, 200.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Santa Ana', 3, 10, 10, 240.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Mary', 2, 7, 7, 147.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Mary', 2, 5, 5, 164.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Mary', 1, 5, 5, 120.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Premiere Classe', 2, 9, 9, 144.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Premiere Classe', 2, 5, 5, 160.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Orla', 4, 2, 2, 246.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Orla', 2, 7, 7, 210.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Orla', 2, 6, 6, 230.00, 'Executive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Le Meridien', 2, 6, 6, 522.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Le Meridien', 2, 3, 3, 755.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Le Meridien', 2, 2, 2, 1025.00, 'Executive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Ivan Chai', 2, 5, 5, 313.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Ivan Chai', 2, 5, 5, 355.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Corinthina', 2, 10, 10, 3368.00, 'Executive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Hotel de Banville', 4, 4, 4, 1100.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Hotel de Banville', 3, 5, 5, 859.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Hotel de Banville', 2, 4, 4, 868.00, 'Executive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('El Greco', 3, 6, 6, 244.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Trend Suites', 4, 8, 8, 496.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Trend Suites', 2, 10, 10, 396.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Wadi Lahmy Azur Resort', 2, 15, 15, 166.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Wadi Lahmy Azur Resort', 3, 11, 11, 255.00, 'Standard');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Giewont Aparthotel', 2, 3, 3, 576.00, 'Executive');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Giewont Aparthotel', 2, 6, 6, 482.00, 'Deluxe');
insert into pokoj (NazwaHotelu, LiczbaOsob, IloscPokoi ,Wolne, Cena, Standard) values ('Apartamenty Grunwaldzkie', 4, 11, 11, 380.00, 'Standard');

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

select * from hotel;
select * from pokoj;
select * from restauracja;
select * from menu;