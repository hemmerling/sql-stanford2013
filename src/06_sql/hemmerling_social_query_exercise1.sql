/* Q1 Find the names of all students who are friends with someone named Gabriel. */
select distinct name from Highschooler 
where ID in 
   (select ID1 from Friend where ID2 in 
      (select ID from Highschooler where name="Gabriel"));
 