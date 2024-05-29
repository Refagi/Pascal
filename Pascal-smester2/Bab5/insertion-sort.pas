program insertion_sort;
uses crt;
var
 i, j, k, temp, n : integer;
 a, b, c : array [1..100] of integer;
 begin
 clrscr;
 write('banyaknya elemen array : '); readln(n);

 for i := 1 to n do
 begin 
  write('elemen ke - ', i, ': '); readln(a[i]);
  end;

writeln;
write('sebelum di urutkan : ');
for i := i to n do 
 begin
 write(a[i], ' ');
 end;

writeln('proses pengurutan insert : ');
for i := 2 to n do 
 begin
 temp := a[i];
 j := i-1;
 while (temp < a[j]) and (j > 0) do
 j := j -1;
 for k := i downto j + 1 do
 a[k] := a[k-1];
 a[j+1] := temp;
 writeln;

 write('hasil akhir langkah ke-', i-1, ' : ');

 for k := 1 to n do
  write(a[k], ' ');
end;

writeln;
write('hasil pengurutan insert ');
for i := 1 to n do
 write(a[i], ' ');
 writeln;
write('sudah terurut dengan benar ?');
readln;
end.