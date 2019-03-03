procedure Demonstrate_Subtypes is
  type Day_Type is (Sun, Mon, Tue, Wed, Thu, Fri, Sat);

  Test_Day : Day_Type := Sat;
  procedure Main (Lower, Upper : in Day_Type; Day : in out Day_Type) is
    subtype Interval is Day_Type range Lower .. Upper;
    X : Interval := Interval ' First;
  begin
    Day := X; -- no run time check. Will definitely succeed.
    X := Day; -- run time check. Day might be out of range.
  End Main;

begin
  Main (Fri, Thu, Test_Day);
end Demonstrate_Subtypes;
