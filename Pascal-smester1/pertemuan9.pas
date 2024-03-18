program loopWhile;
uses crt;
var
  i : Integer;

begin
 clrscr;
 
 i := 6;
 while (i <= 60) do 
   begin
   write(i, ' ');
   i := i + 6;
   end;

readln;
end.

program Repeat_Until;
uses crt;
var 
  i : Integer;

begin
  clrscr;

  i := 6;
  repeat
    begin
     write(i, ' ');
     i := i + 6;
     end;
  until (i > 60);

readln;
end.


program ForLoop;
uses crt;
var
  i : Integer;

begin 
 clrscr;
  for i := 6 to 60 do
  begin 
   if (i mod 6 = 0) then
     write(i, ' ');
   end;
readln;
end.  
    