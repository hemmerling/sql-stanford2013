/* Q4 For all cases where the same reviewer rated the same movie twice 
   and gave it a higher rating the second time, 
   return the reviewer's name and the title of the movie. */
select name, title from Rating
join Reviewer, Movie on Rating.rID = Reviewer.rID and Rating.mID = Movie.mID
join Rating AS Rating2 ON Rating.mID = Rating2.mID AND Rating.rID = Rating2.rID
where Rating2.ratingDate > Rating.ratingDate AND Rating2.stars > Rating.stars
;
 