/* Q2 For every student who likes someone 2 or more grades younger than themselves, 
   return that student's name and grade, and the name and grade of the student they like. */
select distinct HighschoolerName, HighschoolerGrade, JuniorName, JuniorGrade
from (select Highschooler.name as HighschoolerName, 
			 Highschooler.grade HighschoolerGrade, 
			 Junior.name as JuniorName, 
			 Junior.grade as JuniorGrade, 
			 Highschooler.grade-Junior.grade as gradeDiff
from Highschooler, Highschooler as Junior, Likes
where Highschooler.ID=ID1 and Junior.ID=ID2)
where gradeDiff>1
;