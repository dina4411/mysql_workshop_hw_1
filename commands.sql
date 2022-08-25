-- 1. посмотреть все доступные БД
SHOW DATABASES;
-- 2. подключиться к БД "world" 
USE world;
-- 3. получить все данные из таблицы city
SELECT * FROM city;
-- 4. вывести только столбцы с названием стран и населением из таблицы city 
SELECT CountryCode, Population FROM city
-- 5. получить уникальные значения поля Language из таблицы countrylanguage 