/* Q2 Insert 5-star ratings by James Cameron for all movies in the database. 
   Leave the review date as NULL. */
insert into Rating
select rID, mID, 5, null from Reviewer, Movie where name="James Cameron";
;

