create trigger ins
INSTEAD OF INSERT on norating
for each row when exists(select 1 from Movie where mid=new.mid and title=new.title)
begin delete from rating where mid=new.mid; end;
