program nomor4;
uses crt;
var
 i, j, k : integer;
begin
 clrscr;
 k := 2;
 i := 1;
 while(i <= 5) do
 begin
  j := 1;
  while(j <= i + 5) do
  begin
   if (j >= k) AND (j <= k + 4) then
   begin
    write(j, ' ');
   end;
   j := j + 1;
  end;
  writeln();
  i := i + 1;
  k := k + 2;
 end;
readln;
end.

// 2 3 4 5 6
// 4 5 6 7
// 6 7 8
// 8 9
// 10



program denganFor;
uses crt;
var
  i, j, k: integer;
begin
  clrscr;
  k := 2;
  for i := 1 to 5 do
  begin
    for j := 1 to i + 5 do
    begin
      if (j >= k) and (j <= k + 4) then
        write(j, ' ')
    end;
    k := k + 2;
    writeln;
  end;
  readln;
end.
//2 3 4 5 6
// 4 5 6 7
// 6 7 8
// 8 9
// 10