/* Q3 For all cases where 
   A is friends with B, and B is friends with C, 
   add a new friendship for the pair A and C. 
   Do not add duplicate friendships, 
   friendships that already exist, 
   or friendships with oneself. */
insert into Friend
select distinct F1.ID1, F2.ID2
from Friend F1, Friend F2
where F1.ID2 = F2.ID1 
      and F1.ID1<>F2.ID2 
      and F1.ID1 not in (
select F3.ID1 from Friend F3 where F3.ID2=F2.ID2
);            


