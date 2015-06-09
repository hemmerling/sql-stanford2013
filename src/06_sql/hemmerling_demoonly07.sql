/* List students, their grades, 
   their friends, the friend's grades 
   and the difference in  grades */
select Highschooler.name as SeniorName, 
			 Highschooler.grade SeniorGrade, 
			 Junior.name as JuniorName, 
			 Junior.grade as JuniorGrade, 
			 Highschooler.grade-Junior.grade as gradeDiff
from Highschooler, Likes, Highschooler as Junior
where Highschooler.ID=ID1 and Junior.ID=ID2
;