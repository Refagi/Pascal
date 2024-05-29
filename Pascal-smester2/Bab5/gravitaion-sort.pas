// gravitaion sort
program urut_seleksi;
uses crt;
var
 i, j, k, temp, imaks, n : Integer;
 A, B, C : array [1..100] of Integer;
begin
 clrscr; textcolor(10);
 write('Banyaknya Element Array : '); readln(n);

 {input data}
 for i := 1 to n do 
 begin
  write('Element ke-', i, ': '); readln(A[i]);
 end;

 {cetak array pengurutan}
 writeln; textcolor(15);
 write('Sebelum diurutkan : ');
 for i := 1 to n do 
 begin
  write(A[i], ' ');
 end;
  writeln; writeln; textcolor(15);

  writeln('Proses Pengurutan Gravitasi : ');
  for i := 1 to n - 1 do 
  begin
    for j := 1 to n - i do
     begin
     if (A[j] > A[j + 1]) then
      begin
  {Tukar A[j] dengan A[imaks]}
     temp := A[j + 1];
     A[j + 1] := A[j];
     A[j] := temp;
      end;
     end;
     writeln; textcolor(i);

  {Cetak Array tiap langkah pengurutan}
     write('Hasil akhir langkah ke-', i, ' : ');
     for k := 1 to n do 
      begin
       write(A[k], ' ');
      end;
    end;     

  {cetak assay setelah pengurutan}
  textcolor(15); writeln; writeln;
  write('Hasil Pengurutan Gravitasi  : ');
  for i := 1 to n do 
  begin
   write(A[i], ' ');
  end;
  readln;
end.



{BrongzWarsCode154}