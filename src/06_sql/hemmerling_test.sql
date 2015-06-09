/* Find names and grades of students who only have friends in the same grade. 
   Return the result sorted by grade, then by name within each grade. */
select distinct highschooler.name, highschooler.grade
from friend, highschooler, highschooler as h2
where (select 1 from friend
	   where highschooler.id = friend.id1 and 
		     highschooler.grade <> (select grade from highschooler where id=friend.id2)
)
;
