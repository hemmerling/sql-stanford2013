create trigger F1_Del
after delete on Friend
for each row
when exists (select * from Friend
                where ID1 = Old.ID2 and ID2 = Old.ID1)
begin
  delete from Friend
  where (ID1 = Old.ID2 and ID2 = Old.ID1);
end;
create trigger F1_Insert
after insert on Friend
for each row
when not exists (select * from Friend
                where ID1 = New.ID2 and ID2 = New.ID1)
begin
  insert into Friend values (New.ID2, New.ID1);
end
;

