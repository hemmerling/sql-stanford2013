select avg(pre1980.pre1980) - avg(post1980.post1980) 
from (select avg(Ra1.stars) as pre1980 
from Movie M1, Rating Ra1 
where M1.mID = Ra1.mID  and M1.year < 1980 
group by M1.title) pre1980, (select avg(Ra1.stars) as post1980 
from Movie M1, Rating Ra1 
where M1.mID = Ra1.mID  and M1.year > 1980 
group by M1.title) post1980;