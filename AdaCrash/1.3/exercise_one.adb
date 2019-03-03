with Ada.Text_IO;          use Ada.Text_IO;
procedure Exercise_One is
  type Day_Type is (Sun, Mon, Tue, Wed, Thu, Fri, Sat);
  subtype Weekday is Day_Type range Mon .. Fri;
begin
  for Day in Day_Type loop
    case Day is
      when Sun => Put_Line("Sunday");
      when Weekday => Put_Line("Weekday");
      when Sat => Put_Line("Saturday");
    end case;
  end loop;

end Exercise_One;
