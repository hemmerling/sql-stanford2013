select M1.title, M1.director
from Movie M1, Movie M2
where M1.director = M2.director and M1.title <> M2.title
order by M1.director, M1.title;
