/* Update all ratings by reviewer James Cameron to 5 stars */
update Rating set stars=5 where Rating.rID in (
select Rating.rID from Reviewer, Rating where name="James Cameron" and Rating.rID = Reviewer.rID
)
;

