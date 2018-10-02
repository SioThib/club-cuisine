create table adherent (
numadh integer not null AUTO_INCREMENT,
nomadh varchar(30),
prenomadh varchar(20),
adradh varchar(50),
cpadh char(5) default '75010',
villeadh varchar(30) default 'Paris',
teladh char(10),
meladh varchar(40),
primary key (numadh))
ENGINE=INNODB ;

create table chef (
numchef integer not null,
nomchef varchar(30),
prenomchef varchar(20),
specialitechef varchar(40),
primary key (numchef))
ENGINE=INNODB ;

create table cours (
numcours integer not null AUTO_INCREMENT,
libellecours varchar(40),
dureecours integer,
numchefcours integer,
primary key (numcours),
foreign key (numchefcours) references chef(numchef))
ENGINE=INNODB ;

create table session (
numsession integer not null AUTO_INCREMENT,
datesession date,
numcourssession integer,
primary key (numsession),
foreign key (numcourssession) references cours(numcours))
ENGINE=INNODB ;

create table inscription (
numadhins integer not null,
numsessionins integer not null,
dateins date,
primary key (numadhins, numsessionins),
foreign key (numadhins) references adherent(numadh),
foreign key (numsessionins) references session(numsession))
ENGINE=INNODB ;

insert into adherent (nomadh, prenomadh, adradh) values("Chaprot", "Jules", "120 rue d'Hauteville");
insert into adherent (nomadh, prenomadh, adradh) values("Lagaffe", "Gaston", "140 boulevard Magenta");
insert into adherent (nomadh, prenomadh, adradh) values("Demaesmaker", "Edmond", "10 boulevard de Denain");

insert into chef values(1,'Yakamoto', 'Ken', 'cuisine japonaise');
insert into chef values(2,'Pucci', 'Mario', 'cuisine italienne');
insert into chef values(3,'Lam', 'Thieu Phan', 'cuisine vietnamienne');

insert into cours (libellecours, dureecours, numchefcours) values('les sushis de thon',3,1);
insert into cours (libellecours, dureecours, numchefcours) values('les sushis au concombre',2,1);
insert into cours (libellecours, dureecours, numchefcours) values('le tiramisu traditionnel',3,2);
insert into cours (libellecours, dureecours, numchefcours) values('les pasta alla genovese',2,2);
insert into cours (libellecours, dureecours, numchefcours) values('les vrais nems vietnamiens',3,3);

insert into session values ('', '2019-05-15', 1);
insert into session values ('', '2019-05-18', 1);
insert into session values ('', '2019-05-10', 2);
insert into session values ('', '2019-05-12', 2);
insert into session values ('', '2019-06-01', 3);
insert into session values ('', '2019-06-05', 3);
insert into session values ('', '2019-06-02', 4);
insert into session values ('', '2019-06-10', 5);
insert into session values ('', '2019-06-12', 5);
