with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;

procedure Prime is
  Number : Integer;
  N : Integer;
  I : Integer;
begin
  Put("Enter an integer: ");
  Get(Number);
  if Number < 2 then
    Put("The value "); Put(Number, 0); Put_Line(" is bad.");
  else
    Put("The value "); Put(Number, 0);
    I := 1;
    N := Number;
    while I <= N loop
      I := I + 1;
      N := Number / I;
      if Number rem I = 0 then
        Put_Line(" is not prime.");
        return;
      end if;
    end loop;
    Put_Line(" is prime.");
  end if;
end Prime;
