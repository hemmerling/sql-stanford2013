select name, grade
from Highschooler
where ID not in (
  select ID1 from Likes
  union
  select ID2 from Likes
)
order by grade, name
;
