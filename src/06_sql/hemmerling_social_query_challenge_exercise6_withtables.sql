drop t3;
create table t3 as select ID1, count(ID2) as nof from Friend group by ID1;
select name, grade from Highschooler where ID in (select ID1 from t3 
where t3.nof = (select max(nof) from t3));

