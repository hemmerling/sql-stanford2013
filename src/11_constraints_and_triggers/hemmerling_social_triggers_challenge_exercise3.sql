create trigger LoveCompetitor
after update of ID2 on Likes
for each row
when Old.ID1 = New.ID1 and Old.ID2 <> New.ID2
begin
  delete from Friend
  where (Friend.ID1 = Old.ID2 and Friend.ID2 = New.ID2)
  or (Friend.ID1 = New.ID2 and Friend.ID2 = Old.ID2);
end;
