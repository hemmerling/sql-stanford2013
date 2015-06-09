/* Find the titles of all movies that have a ratings, but with rating date = null. */
/* .nullvalue NULL */
select distinct title from Rating, Movie where Rating.ratingDate is null and Rating.mID = Movie.mID;
