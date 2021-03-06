SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature'

SELECT yr, subject FROM nobel WHERE winner LIKE 'Albert E%';

SELECT winner FROM nobel WHERE subject LIKE 'Peace' AND yr >= 2000;

SELECT * FROM nobel WHERE subject LIKE 'Literature' AND yr BETWEEN 1980 AND 1989;

SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama' );

SELECT winner FROM nobel WHERE winner LIKE 'John %';

SELECT * FROM nobel 
WHERE (subject = 'Physics' AND yr = '1980') 
OR (subject = 'Chemistry' AND yr = '1984');

SELECT * FROM nobel WHERE subject NOT IN ('Chemistry','Medicine') AND yr = '1980';

SELECT * FROM nobel WHERE (subject = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004);

SELECT * FROM nobel WHERE winner LIKE 'PETER GR%';

SELECT * FROM nobel WHERE winner LIKE 'EUGENE O%';

SELECT winner, yr, subject FROM nobel WHERE winner Like 'Sir%' ORDER BY yr DESC,winner;

SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'), subject,winner

/*QUIZZ*/
                  
/*1*/             
SELECT winner FROM nobel
WHERE winner LIKE 'C%' AND winner LIKE '%n'

/*2*/
SELECT COUNT(subject) FROM nobel
WHERE subject = 'Chemistry'
AND yr BETWEEN 1950 and 1960

/*3*/ 
SELECT COUNT(DISTINCT yr) FROM nobel
WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')

/*4*/ 
SELECT subject, winner FROM nobel WHERE winner LIKE 'Sir%' AND yr LIKE '196%'

/* 
Medicine	Sir John Eccles
Medicine	Sir Frank Macfarlane Burnet */

/*5*/
SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT yr 
                   FROM nobel
                 WHERE subject IN ('Chemistry','Physics'))

/*6*/
SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace')

/*7*/ 
SELECT subject, COUNT(subject) 
FROM nobel 
WHERE yr ='1960' 
GROUP BY subject

/*
Chemistry	1
Literature	1
Medicine	2
Peace	1
Physics	1*/