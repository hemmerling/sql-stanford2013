/* Q3 Find the titles of all movies that have no ratings. */
select distinct title from Movie where mID in ( select mID from Movie ) and mID not in ( select mID from Rating );
