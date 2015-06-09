/* Q4 Find names and grades of students who only have friends in the same grade. 
   Return the result sorted by grade, then by name within each grade. */
select distinct highschooler.name, highschooler.grade
from friend, highschooler, highschooler as h2
where friend.id1 = highschooler.id and friend.id2 = h2.id 
	  and highschooler.grade = h2.grade 
	  and not exists (select * from friend
					  where highschooler.id = friend.id1 and 
					  highschooler.grade <> (select grade from highschooler where id=friend.id2)
					 )
order by highschooler.grade, highschooler.name
;