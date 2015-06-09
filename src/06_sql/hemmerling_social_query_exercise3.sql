/* Q3 For every pair of students who both like each other, 
   return the name and grade of both students. 
   Include each pair only once, with the two names in alphabetical order.  */
select distinct Highschooler.name, 
	   Highschooler.grade, 
	   Friend.name, 
	   Friend.grade
from Likes as LikesFriend, Likes as LikesHighschooler, Highschooler, Highschooler as Friend
where LikesHighschooler.ID1=LikesFriend.ID2 and
      LikesFriend.ID1=LikesHighschooler.ID2 and
      LikesHighschooler.ID1=Highschooler.ID and
      LikesHighschooler.ID2=Friend.ID and
	  Highschooler.name<Friend.name
;
