select name, grade
from Highschooler, (
  select ID1 from Friend
  except
  -- student who has someone with more friends than them
  select distinct (FC1.ID1)
  from (
    select ID1, count(ID2) as FriendCount
    from Friend
    group by ID1
  ) as FC1,
  (
    select ID1, count(ID2) as FriendCount
    from Friend
    group by ID1
  ) as FC2
  where FC1.FriendCount < FC2.FriendCount
) as MaxFriend
where MaxFriend.ID1 = Highschooler.ID
;
