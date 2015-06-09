/* Find names and grades of students who only have friends in the same grade. 
   Return the result sorted by grade, then by name within each grade. */
   
/* unerwartet einfache, nicht verständliche Lösung */
select distinct name, grade
from Highschooler 
where ID not in 
	(select ID1 from Likes 
	 union select ID2 from Likes ) 
order by grade, name
;
