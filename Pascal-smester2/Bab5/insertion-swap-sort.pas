program insertion_swap_sort;
uses crt;
var 
 i, j, k, n, temp: integer;
 a: array [1..100] of integer;

begin
 clrscr;
 write('Banyaknya elemen array = '); readln(n);
 for i := 1 to n do 
 begin
  write('Element ke- ', i, ' : '); readln(a[i]);
 end;
 writeln;

 writeln('sebelum di urutkan = ');
 for i := 1 to n - 1 do
  write(a[i], ' ');
  writeln;

  writeln('Proses Pengurutan insertion-swap-sort = ');
  for i := 1 to n - 1 do 
  begin
   j := i + 1;
   while (a[j] < a[j - 1]) and (j > 1) do 
   begin
    temp := a[j - 1];
    a[j - 1] := a[j];
    a[j] := temp;
    j := j - 1;
   end;
  writeln;

  writeln('Hasil akhir langkah ke- ', i, ' : '); 
  for k := 1 to n do 
  write(a[k], ' ');
  end;
 writeln;

 write('hasil pengurutan insertion-swap-sort = ');
 for i := 1 to n do
 write(a[i], ' ');
 readln;
end.

