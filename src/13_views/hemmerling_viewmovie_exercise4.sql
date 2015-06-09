create trigger instead_of_delete_highlyrated
instead of delete on HighlyRated
for each row
begin
    delete from Rating where mid=Old.mid and stars > 3;
end;
