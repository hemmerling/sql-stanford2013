/* Q1. Write a trigger that makes new students named 'Friendly' 
   automatically like everyone else in their grade. 
   That is, after the trigger runs, we should have ('Friendly', A) 
   in the Likes table for every other Highschooler A 
   in the same grade as 'Friendly' */ 
create trigger R1
before insert on Highschooler
for each row
when  New.name="Friendly"
begin
  insert into Likes 
  Select New.ID,ID from Highschooler where grade = New.grade;
 end;


