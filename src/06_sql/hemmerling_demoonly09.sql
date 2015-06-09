/* Select students who have friends with a different grade then the grade they have */
select distinct highschooler.name, highschooler.grade
from friend, highschooler, highschooler as h2
where (select 1 from friend
	   where highschooler.id = friend.id1 and 
		     highschooler.grade <> (select grade from highschooler where id=friend.id2)
)
;
