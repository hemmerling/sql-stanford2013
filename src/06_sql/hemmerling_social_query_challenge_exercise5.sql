select count(distinct F1.ID2) + count(distinct F2.ID2)
from Friend F1, Friend F2, Highschooler
where Highschooler.name = 'Cassandra'
and Highschooler.ID = F1.ID1
-- reach friends of friends
and F2.ID1 = F1.ID2
-- except herself
and F2.ID1 <> Highschooler.ID
and F2.ID2 <> Highschooler.ID
;
