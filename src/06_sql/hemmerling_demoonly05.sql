/* Select all friend IDs of friends of Gabriel */
select ID1 from Friend where ID2 in 
      (select ID from Highschooler where name="Gabriel");