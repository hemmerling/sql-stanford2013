drop t1; 
drop t2;
create table t1 as (select ID2 from Friend 
where ID1 = (select ID from Highschooler where name = 'Cassandra'));
create table t2 as select distinct ID2 from Friend 
where ID1 in (select * from t1) and ID2 <> (select ID from Highschooler where name = 'Cassandra');
select count(ID2) from ( select * from t1 union select * from t2 ) G2;