/* Q3. Write a trigger that automatically deletes students 
   when they graduate, i.e., 
   when their grade is updated to exceed 12. */   
create trigger R1
after update on Highschooler
for each row
begin
  delete from Highschooler where grade >12;
 end; 

