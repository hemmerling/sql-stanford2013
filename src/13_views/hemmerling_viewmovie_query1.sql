update LateRating set title = "Late Favorite" where stars > 2; 
update LateRating set mID = 100, title = "Don't change";
select * from LateRating;
