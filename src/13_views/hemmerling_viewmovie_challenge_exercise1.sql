create trigger upd_all
INSTEAD OF UPDATE of mid,title,stars on LateRating
for each row when new.ratingDate = old.ratingDate begin
update Movie set title=new.title where mid=old.mid;
update Rating set stars=new.stars where ratingDate=old.ratingDate and mid=old.mid;
update Movie set mid=new.mid where mid=old.mid;
update Rating set mid=new.mid where mid=old.mid;
end;

