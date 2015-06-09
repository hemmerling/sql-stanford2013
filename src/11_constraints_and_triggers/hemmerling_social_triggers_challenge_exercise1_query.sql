select H1.name, H1.grade, H2.name, H2.grade 
from Friend F, Highschooler H1, Highschooler H2 
where F.ID1 = H1.ID and F.ID2 = H2.ID 
order by H1.name, H1.grade, H2.name, H2.grade;

