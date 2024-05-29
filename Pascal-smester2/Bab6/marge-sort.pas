program merge_sort;
uses crt;
var
 i, m, n, y: Integer;
 a, b, c: array [1..100] of Integer;

procedure cetakArray(var a: array of Integer; x: Integer);
var
 i: Integer;
begin
 write('hasil = ');
 for i := 1 to x do
  write(a[i], ' ');
 writeln;
end;

procedure sisip(var a: array of Integer; x: Integer);
var
 i, j, temp: Integer;
begin
 for i := 1 to x  do 
  begin
   temp := a[i];
   j := i;
   while (j > 1) and (temp < a[j - 1]) do
   begin
    a[j] := a[j - 1];
    j := j - 1;
   end;
   a[j] := temp;
  end;
end;

procedure gabung(a, b: array of Integer; m, n: Integer; var c: array of Integer; var x: Integer);
var
 i, j, k: Integer;
begin
 i := 1;
 j := 1;
 k := 1;
 while (i <= m) and (j <= n) do
 begin
  if a[i] < b[j] then
  begin
   c[k] := a[i];
   i := i + 1;
  end
  else
  begin
   c[k] := b[j];
   j := j + 1;
  end;
  k := k + 1;
 end;

 while (i <= m) do
 begin
  c[k] := a[i];
  i := i + 1;
  k := k + 1;
 end;

 while (j <= n) do
 begin
  c[k] := b[j];
  j := j + 1;
  k := k + 1;
 end;
 
 x := k - 1;
end;

begin
 clrscr;
 randomize;
 writeln('MERGING');
 write('Banyaknya elemen array pertama = '); readln(m);
 write('Banyaknya elemen array kedua = '); readln(n);

 for i := 1 to m do 
  begin
  a[i] := random(100);
  end;

 for i := 1 to n do
  begin 
  b[i] := random(100);
   end;

 writeln('Sebelum pengurutan:');
 writeln('Array pertama: ');
 cetakArray(a, m);
 writeln('Array kedua: ');
 cetakArray(b, n);

 sisip(a, m);
 sisip(b, n);
 writeln('Setelah pengurutan:');
 writeln('Array pertama: ');
 cetakArray(a, m);
 writeln('Array kedua: ');
 cetakArray(b, n);

 gabung(a, b, m, n, c, y);
 writeln('Setelah penggabungan:');
 cetakArray(c, y);

 readln;
end.
