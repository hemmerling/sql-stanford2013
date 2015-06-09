/* Q1. To check your trigger(s), we first ran the following data modification statement(s): */
insert into Highschooler values (1000, 'Friendly', 9); 
insert into Highschooler values (2000, 'Friendly', 11); 
insert into Highschooler values (3000, 'Unfriendly', 10);
/* We then ran the following query: */
select H1.name, H1.grade, H2.name, H2.grade 
from Likes L, Highschooler H1, Highschooler H2 
where L.ID1 = H1.ID and L.ID2 = H2.ID 
order by H1.name, H1.grade, H2.name, H2.grade;

