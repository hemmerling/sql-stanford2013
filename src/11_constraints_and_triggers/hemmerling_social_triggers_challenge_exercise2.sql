create trigger Graduation
after update of grade on Highschooler
for each row
when New.grade > 12
begin
  delete from Highschooler
  where ID = New.ID;
end
|
create trigger Upgrade
after update of grade on Highschooler
for each row
when New.grade = Old.grade + 1
begin
  update Highschooler
  set grade = grade + 1
  where ID in (select ID2 from Friend
               where ID1 = New.ID);
end;

