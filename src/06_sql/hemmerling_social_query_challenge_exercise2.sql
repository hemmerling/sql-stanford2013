select H1.name, H1.grade, H2.name, H2.grade, H3.name, H3.grade 
from Highschooler H1, Highschooler H2, Highschooler H3, Likes L1, Friend F1, Friend F2 
where H1.ID = L1.ID1 and H2.ID = L1.ID2 and F1.ID1 = H3.ID 
and F1.ID2 = H1.ID and F2.ID1 = H3.ID and F2.ID2 = H2.ID and 
H1.ID not in (select ID1 from Friend where ID2 = H2.ID);
 