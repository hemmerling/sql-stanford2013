create trigger ins
INSTEAD OF INSERT on HighlyRated
for each row when exists (select 1 from Movie where mid=new.mid and title=new.title)
begin insert into rating(rid,mid,stars) values(201,new.mid,5); end;

