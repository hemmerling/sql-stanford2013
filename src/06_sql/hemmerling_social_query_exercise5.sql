/* Q5 Find the name and grade of all students who are liked by more than one other student. */
select h1.name, h1.grade
from Highschooler h1
where h1.id in (
/* Find the number of students who like a student, for each student */
select id2
from Likes group by id2 having count(id2)>=2 order by id2 
)
;
