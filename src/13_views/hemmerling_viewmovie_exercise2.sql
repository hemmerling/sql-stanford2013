create trigger instead_of_star_update
instead of update of stars on LateRating
for each row
begin
    update Rating set stars=New.stars where ratingDate=New.ratingDate and mid=New.mid;
end;