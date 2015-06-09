/* Q9 Find the names of all reviewers who have contributed three or more ratings. 
   (As an extra challenge, try writing the query without HAVING or without COUNT.)  */
select name from Reviewer, Rating where Rating.rID = Reviewer.rID group by name having count(Rating.rid)>=3;

