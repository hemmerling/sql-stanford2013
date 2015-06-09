select M.mID, title, stars 
from Movie M, Rating R 
where M.mID = R.mID order by M.mID, stars;

