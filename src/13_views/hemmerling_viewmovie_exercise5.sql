create trigger instead_of_delete_highlyrated
instead of delete on HighlyRated
for each row
begin
    update Rating set stars=3 where mid=Old.mid and stars > 3;
end;