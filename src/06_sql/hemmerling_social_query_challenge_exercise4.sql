select avg(friends) from (select ID1,count(ID2) as friends from Friend group by ID1) G;
 