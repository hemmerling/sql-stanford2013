/* Q2. To check your trigger(s), 
   we first ran the following data modification statement(s): */
insert into Highschooler values (2121, 'Caitlin', null); 
insert into Highschooler values (2122, 'Don', null); 
insert into Highschooler values (2123, 'Elaine', 7); 
insert into Highschooler values (2124, 'Frank', 20); 
insert into Highschooler values (2125, 'Gale', 10);
/* We then ran the following query: */
select * from Highschooler order by ID;

