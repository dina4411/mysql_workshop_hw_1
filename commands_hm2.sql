-- 1. отсортируй данные по зарплате
SELECT * FROM EMPLOYEE ORDER BY salary;
-- 2. отсортируй данные по зарплате от большего к меньшему
SELECT * FROM EMPLOYEE ORDER BY salary ASC;
-- 3. выведи 3 первые строчки таблицы
SELECT * FROM EMPLOYEE LIMIT 3;
-- 4. выведи 3 последние строчки таблицы
SELECT * FROM EMPLOYEE ORDER BY empId DESC LIMIT 3;
-- 5. выведи данные, где в названии отделов встречается буква "t"
SELECT * FROM EMPLOYEE WHERE dept LIKE "%t%";
-- 6. выведи длину названия отдела "Management"
SELECT dept, length(dept) FROM EMPLOYEE WHERE dept = "Management";
-- 7. выведи сумму всех зарплат сотрудников
SELECT sum(salary) FROM EMPLOYEE;
-- 8. выведи среднюю  зарплату сотрудников
SELECT avg(salary) FROM EMPLOYEE;
-- 9. выведи округленную среднюю  зарплату сотрудников
SELECT round(avg(salary)) FROM EMPLOYEE;
-- 10. выведи минимальную и максимальную  зарплату сотрудников 
SELECT min(salary), max(salary) FROM EMPLOYEE;
-- 11. выведи количество сотрудников 
SELECT count(*) FROM EMPLOYEE;
-- 12. выведи количество сотрудников в каждом отделе 
SELECT dept, count(*) FROM EMPLOYEE GROUP BY dept;
-- 13. выведи отделы, где минимальная запрплата больше 40000
SELECT dept, min(salary) FROM EMPLOYEE GROUP BY dept HAVING min(salary) > 40000;