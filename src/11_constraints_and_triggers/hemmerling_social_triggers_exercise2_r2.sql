/* Q2, Trigger R2 */
/* Write one or more triggers to manage the grade attribute of new Highschoolers. 
   If the inserted tuple has a value less than 9 or greater than 12, 
   change the value to NULL. 
   On the other hand, if the inserted tuple has a null value for grade, 
   change it to 9. */   
/* To create more than one trigger, 
   separate the triggers with a vertical bar (|) */   
create trigger R2
after insert on Highschooler
for each row
when  (New.grade is null)
begin
  update Highschooler set grade=9 where ID=New.ID;
end;

