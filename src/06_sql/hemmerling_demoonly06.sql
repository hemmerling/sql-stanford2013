/* Find the names of all students who are friends with someone named Gabriel,
   but with incorrect kind of solution */
select distinct name from Highschooler
join Friend on Highschooler.ID = Friend.ID1 where Friend.ID2=1689 or Friend.ID2=1911;
