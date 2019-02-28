with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Prime is
  use Ada.Text_IO;
  use Ada.Integer_Text_IO;
  Number : Integer;
begin
  Put("Enter an integer: ");
  Get(Number);
  if Number < 2 then
    Put("The value "); Put(Number, 0); Put_Line(" is bad.");
  else
    Put("The value "); Put(Number, 0);
    for I in 2 .. (Number - 1) loop
      if Number rem I = 0 then
        Put_Line(" is not prime.");
        return;
      end if;
    end loop;
    Put_Line(" is prime.");
  end if;
end Prime;
