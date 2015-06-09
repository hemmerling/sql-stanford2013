/* Q3. To check your trigger(s), we first ran the following data modification statement(s): */
update Highschooler set grade = grade + 1 
where name = 'Austin' or name = 'Kyle' or name = 'Logan';
/* We then ran the following query: */
select * from Highschooler order by name, grade;

