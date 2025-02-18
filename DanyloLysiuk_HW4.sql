create database CountriesWorld;
use CountriesWorld;

create table Language (
	Id int auto_increment primary key,
    Name varchar(50) not null
);
create table Continent (
	Id int auto_increment primary key,
    Name varchar(30) not null
);
create table Currency (
	Id int auto_increment primary key,
    Name varchar(30) not null
);alter table Currency
modify Name varchar(60) not null;

create table Country (
	Id int auto_increment primary key,
    Name varchar(100) not null,
    ContinentId int not null,
    Capital varchar(100) not null,
    Territory decimal(10,3) not null,
    CurrencyId int not null,
    Debut int not null,
    Champion int not null,
    constraint FK_Country_Continent foreign key (ContinentId) references Continent(Id),
    constraint FK_Country_Currency foreign key (CurrencyId) references Currency(Id)
);

create table CountryLanguage (
	Id int auto_increment primary key,
    CountryId int not null,
    LanguageId int not null,
    constraint FK_CountryLanguage_Country foreign key (CountryId) references Country(Id),
    constraint FK_CountryLanguage_Language foreign key (LanguageId) references Language(Id)
);


INSERT Continent (Name) VALUES
(N'Европа'),
(N'Африка'),
(N'Азия'),
(N'Южная Америка'),
(N'Центральная Америка'),
(N'Северная Америка'),
(N'Австралия');

INSERT Currency (Name) VALUES 
(N'евро'),
(N'костариканский колон'),
(N'злотый'),
(N'доллар США'),
(N'фунт стерлингов'),
(N'гуарани'),
(N'доллар Тринидад и Тобаго'),
(N'шведская крона'),
(N'аргентинский песо'),
(N'франк'),
(N'динар'),
(N'мексиканский песо'),
(N'риал'),
(N'кванза'),
(N'чеди'),
(N'чешская крона'),
(N'бразильский реал'),
(N'швейцарский франк'),
(N'куна'),
(N'австралийский доллар'),
(N'иена'),
(N'вона'),
(N'гривня'),
(N'тунисский динар'),
(N'саудовский риал');

INSERT Language (Name) VALUES
(N'украинский'),
(N'французский'),
(N'арабский'),
(N'английский'),
(N'немецкий'),
(N'португальский'),
(N'японский'),
(N'испанский'),
(N'итальянский'),
(N'корейский'),
(N'польский'),
(N'шведский'),
(N'сербский'),
(N'нидерландский'),
(N'персидский'),
(N'чешский'),
(N'хорватский');

INSERT Country (Name, ContinentId, Capital, Territory, CurrencyId, Debut, Champion) VALUES 
(N'Украина', 1, N'Киев', 603.7, 23, 1, 0),
(N'Франция', 1, N'Париж', 545.63, 1, 0, 1),
(N'Тунис', 2, N'Тунис', 155.36, 24, 0, 0),
(N'Ангола', 2, N'Луанда', 1246.7, 14, 1, 0),
(N'Япония', 3, N'Токио', 374.744, 21, 0, 0),
(N'Бразилия', 4, N'Бразилиа', 8456.51, 17, 0, 5),
(N'Испания', 1, N'Мадрид', 499.542, 1, 0, 0),
(N'Италия', 1, N'Рим', 294.02, 1, 0, 4),
(N'Тринидад и Тобаго', 5, N'Порт-оф-Спейн', 5.1, 7, 1, 0),
(N'Германия', 1, N'Берлин', 349.223, 1, 0, 3),
(N'Аргентина', 4, N'Буэнос-Айрес', 2736.69, 9, 0, 2),
(N'Парагвай', 4, N'Асунсьон', 397.3, 6, 0, 0),
(N'Южная Корея', 3, N'Сеул', 98.19, 22, 0, 0),
(N'Коста-Рика', 5, N'Сан-Хосе', 50.66, 2, 0, 0),
(N'Польша', 1, N'Варшава', 304.465, 3, 0, 0),
(N'США', 6, N'Вашингтон', 9158.96, 4, 0, 0),
(N'Португалия', 1, N'Лиссабон', 91.951, 1, 0, 0),
(N'Саудовская Аравия', 3, N'Эр-Рияд', 1960.582, 25, 0, 0),
(N'Англия', 1, N'Лондон', 129.634, 5, 0, 1),
(N'Швеция', 1, N'Стокгольм', 410.934, 8, 0, 0),
(N'Эквадор', 4, N'Кито', 276.84, 4, 0, 0),
(N'Хорватия', 1, N'Загреб', 56.414, 19, 0, 0),
(N'Мексика', 5, N'Мехико', 1923.04, 12, 0, 0),
(N'Кот-д''Ивуар', 2, N'Ямусукро', 322.5, 10, 1, 0),
(N'Нидерланды', 1, N'Амстердам', 41.5, 1, 0, 0),
(N'Швейцария', 1, N'Берн', 41.3, 18, 0, 0),
(N'Того', 2, N'Ломе', 56.6, 10, 1, 0),
(N'Иран', 3, N'Тегеран', 1650, 13, 0, 0),
(N'Австралия', 7, N'Канберра', 7700, 20, 0, 0),
(N'Сербия и Черногория', 1, N'Белград', 102.2, 11, 0, 0),
(N'Гана', 2, N'Аккра', 238.5, 15, 1, 0),
(N'Чехия', 1, N'Прага', 78.9, 16, 0, 0);

INSERT CountryLanguage (CountryId, LanguageId) VALUES 
(29, 4),
(19, 4),
(4, 6),
(11, 8),
(6, 6),
(31, 4),
(10, 5),
(28, 15),
(7, 8),
(8, 9),
(14, 8),
(24, 2),
(23, 8),
(25, 14),
(12, 8),
(15, 11),
(17, 6),
(18, 3),
(30, 13),
(16, 4),
(27, 2),
(9, 4),
(3, 2),
(3, 3),
(1, 1),
(2, 2),
(22, 17),
(32, 16),
(26, 9),
(26, 5),
(26, 2),
(20, 12),
(21, 8),
(13, 10),
(5, 7);

-- 1. Отобразить страну, которая чаще других становилась чемпионом мира.

select name as CountryName, champion as CountryChampion from country
where champion = (Select max(champion) from country);

-- або

select name as CountryName, sum(champion) as CountryChampion from country
group by name
order by CountryChampion desc
limit 1;

-- 2. Отобразить количество стран, представленное каждым континентом на чемпионате мира.

select Continent.Name as CountryContinent, count(Country.Id) as CountryCount from Continent
join Country on Country.ContinentId = Continent.Id
group by Continent.Name;

-- або

select (select name from continent 
		where Id = Country.ContinentId) as CountryContinent,
        count(*) as CountryCount from country
group by ContinentId;

-- 3. Отобразить европейскую страну, которая чаще других становилась чемпионом мира.

select name as CountryName, champion as CountryChampion from country
Where ContinentId = (Select Id from Continent where Name = "Европа")
order by champion desc
limit 1;

-- або

select country.name as CountryName, champion as CountryChampion from country
join continent on country.continentid = continent.id
where continent.name = "Европа"
order by country.champion desc
limit 1;

-- 4. Отобразить страну, территория которой наибольшая.

select name as CountryName, territory as CountryTerritory from country
order by CountryTerritory desc
limit 1;

-- або

select name as CountryName, territory as CountryTerritory from country
where territory = (select max(territory) from country);

-- 5. Отобразить европейскую страну, территория которой наибольшая.

select name as CountryName, territory as CountryTerritory from country
where ContinentId = (select id from continent where name = "Европа")
order by CountryTerritory desc
limit 1;

 -- або
 
select country.name as CountryName, territory as CountryTerritory from country
join continent on country.continentid = continent.id
where continent.name = "Европа"
order by CountryTerritory desc
limit 1;

-- 6. Отобразить по каждому континенту количество стран, которые становились чемпионами мира.

select continent.name as CountryContinent, Count(country.id) as ChampionCountryCount from continent
join country on continent.id = country.continentid
where country.champion > 0
group by continent.name;

-- 7. Отобразить для каждого континента суммарное количество чемпионских титулов.

select continent.name as CountryContinent, sum(country.champion) as ChampionCountryCount from continent
join country on continent.id = country.continentid
group by continent.name
order by sum(country.champion) desc;

-- 8. Определить по каждому континенту среднее значение территории для стран, входящих в этот континент.

select continent.name as CountryContinent, avg(country.territory) as AverageCountryTerritory from continent
join country on continent.id = country.continentid
group by continent.name
order by avg(country.territory);

-- 9. Отобразить количество стран-дебютантов для каждого континента.
select continent.name as CountryContinent, count(country.id) as CountDebut from continent
join country on continent.id = country.continentid
where country.debut = 1
group by continent.name
order by count(country.id) desc;

-- 10. Отобразить для каждого языка количество стран, в которых этот язык является официальным.

select language.name as Language, count(Countrylanguage.countryid) as CountCountry from Language
join countrylanguage on language.id = countryLanguage.languageid
group by language.name
order by count(Countrylanguage.countryid) desc;

-- 11. Отобразить африканскую страну, территория которой наименьшая.

select name as CountryName, territory as CountryTerritory from country
where ContinentId = (select id from continent where name = "Африка")
order by CountryTerritory 
limit 1;

-- або

select country.name as CountryName, territory as CountryTerritory from country
join continent on country.continentid = continent.id
where continent.name = "Африка"
order by CountryTerritory 
limit 1;

-- 12. Отобразить для каждой валюты количество стран, в которых эта валюта является национальной.

select currency.name as Currency, Count(country.id) as CountryCount from Currency
join country on Currency.id = Country.Currencyid
group by currency.name
order by Count(country.id) desc;

-- 13. Отобразить наиболее распространенный язык и указать количество стран, в которых он является официальным.

select language.name as Language, count(Countrylanguage.countryid) as CountCountry from Language
join countrylanguage on language.id = countryLanguage.languageid
group by language.name
order by count(Countrylanguage.countryid) desc
limit 1;

-- 14. Отобразить континент, у которого самый высокий суммарный показатель по чемпионским титулам.

select continent.name as ContinentCountry, sum(country.champion) as SummaryChampion from continent
join country on continent.id = country.continentid
group by continent.name
order by sum(country.champion) desc
limit 1;

-- 15. Отобразить наиболее распространенный язык среди стран европейского и африканского континентов.

select language.name as Language, count(Countrylanguage.countryid) as CountCountry from Language
join countrylanguage on language.id = countryLanguage.languageid
join country on country.id = countrylanguage.countryid
join continent on continent.id = country.continentid
where continent.name in('Европа', 'Африка')
group by language.name
order by count(Countrylanguage.countryid) desc
