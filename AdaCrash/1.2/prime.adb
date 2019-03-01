with Ada.Text_IO;          use Ada.Text_IO;
with Ada.Integer_Text_IO;  use Ada.Integer_Text_IO;

procedure Prime is
  Number : Integer;
  N : Integer;
  I : Integer;
  Match : Boolean;
begin
  Prime_Loop:
    loop
      Put("Enter an integer: ");
      Get(Number);
      exit Prime_Loop when Number = -1;
      if Number < 0 then
        Put("The value "); Put(Number, 0); Put_Line(" is negative.");
      elsif Number < 2 then
        Put("The value "); Put(Number, 0); Put_Line(" is bad.");
      else
        Put("The value "); Put(Number, 0);
        I := 1;
        N := Number;
        Match := False;
        Factor_loop:
          while I <= N loop
            I := I + 1;
            N := Number / I;
            if Number rem I = 0 then
              Match := True;
              exit Factor_loop;
            end if;
          end loop Factor_loop;
        if Match then
          Put_Line(" is not prime.");
        else
          Put_Line(" is prime.");
        end if;
      end if;
    end loop Prime_Loop;
end Prime;
