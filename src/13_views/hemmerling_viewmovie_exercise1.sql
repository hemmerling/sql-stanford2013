create trigger instead_of_update
instead of update of title on LateRating
for each row
begin
    update Movie set title=New.title where mid=New.mid;
end;