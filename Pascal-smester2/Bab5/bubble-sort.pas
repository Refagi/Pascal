program bubble_sort;
uses crt;

var
  i, j, k, n, temp: integer;
  a: array [1..100] of integer;

begin
  clrscr;
  write('Banyaknya Element Array = '); readln(n);

  for i := 1 to n do
    a[i] := random(1000); // Mengisi array dengan angka acak
  writeln;

  write('Sebelum di urutkan = ');
  for i := 1 to n do
    write(a[i], ', ');
  writeln;

  writeln('Proses bubble sort = ');
  for i := 1 to n - 1 do
  begin
    for j := 1 to n - i do
    begin
      if a[j] > a[j + 1] then
      begin
        temp := a[j];
        a[j] := a[j + 1];
        a[j + 1] := temp;
      end;
    end;
    writeln('Hasil akhir langkah ke-', i, ': ');
    for k := 1 to n do
      write(a[k], ' ');
    writeln;
  end;

  writeln;
  write('Hasil Bubble sort = ');
  for i := 1 to n do
    write(a[i], ' ');
  readln;
end.
