/* Q2 If two students A and B are friends, 
   and A likes B but not vice-versa, remove the Likes tuple. */   
delete from Likes
where Likes.ID2 in (
select Friend.ID2 from Friend where Likes.ID1 = Friend.ID1
) and
Likes.ID2 not in (
select L.ID1 from Likes L where Likes.ID1 = L.ID2
);

