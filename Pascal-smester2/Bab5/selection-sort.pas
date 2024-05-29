
// //2
// program urut_seleksi;
// uses crt;
// var
//  i, j, k, temp, imaks, n : Integer;
//  A, B, C : array [1..100] of Integer;
// begin
//  clrscr; textcolor(10);
//  write('Banyaknya Element Array : '); readln(n);

//  {input data}
//  for i := 1 to n do 
//  begin
//   write('Element ke-', i, ': '); readln(A[i]);
//  end;

//  {cetak array pengurutan}
//  writeln; textcolor(15);
//  write('Sebelum diurutkan : ');
//  for i := 1 to n do 
//  begin
//   write(A[i], ' ');
//  end;
//   writeln; writeln; textcolor(15);
//   writeln('Proses Pengurutan Seleksi : ');
//   for i := 1 to n - 1 do 
//   begin
//    imaks := i;
//     for j := i + 1 to n do
//      if (A[j] < A[imaks]) then
//      imaks := j;
//   {Tukar A[j] dengan A[imaks]}
//      temp := A[imaks];
//      A[imaks] := A[i];
//      A[i] := temp;
//      writeln; textcolor(i);

//   {Cetak Array tiap langkah pengurutan}
//      write('Hasil akhir langkah ke-', i, ' : ');
//      for k := 1 to n do 
//       begin
//        write(A[k], ' ');
//       end;     
//   end;

//   {cetak assay setelah pengurutan}
//   textcolor(15); writeln; writeln;
//   write('Hasil Pengurutan Seleksi  : ');
//   for i := 1 to n do 
//   begin
//    write(A[i], ' ');
//   end;
//   readln;
// end.


//1
// program urut_seleksi;
// uses crt;
// var
//   i, j, n, temp, imaks: Integer;
//   A: array [1..100] of Integer;
// begin
//   clrscr;
//   textcolor(10);
//   write('Banyaknya Element Array : '); 
//   readln(n);

//   {input data}
//   for i := 1 to n do 
//   begin
//     write('Element ke-', i, ': '); 
//     readln(A[i]);
//   end;

//   {cetak array sebelum pengurutan}
//   writeln; 
//   textcolor(15);
//   write('Sebelum diurutkan : ');
//   for i := 1 to n do 
//   begin
//     write(A[i], ' ');
//   end;

//   writeln; 
//   writeln; 
//   textcolor(15);
//   writeln('Proses Pengurutan Seleksi : ');
//   for i := n downto 2 do 
//   begin
//     { Pemilihan maksimum }  //5 2 1 3 4
//     imaks := 1;
//     for j := 2 to i do
//       if (A[j] > A[imaks]) then
//         imaks := j;

//     { Tukar A[i] dengan A[imaks] }
//     temp := A[i];
//     A[i] := A[imaks];
//     A[imaks] := temp;

//     { Cetak Array tiap langkah pengurutan }
//     write('Hasil akhir langkah ke-', n - i + 1, ' : ');
//     for j := 1 to n do 
//     begin
//       write(A[j], ' ');
//     end;     
//     writeln;
//   end;

//   {cetak array setelah pengurutan}
//   textcolor(15); 
//   writeln;
//   write('Hasil Pengurutan Seleksi  : ');
//   for i := 1 to n do 
//   begin
//     write(A[i], ' ');
//   end;

//   readln; 
// end.


//4
program Urut_SELEKSI;
uses crt;
var 
    i,j,k,temp,imin,n : integer;
    A,B,C : array [1..100] of integer;
begin
    clrscr;  textcolor(10);
    write('Banyaknya Elemen Array: '); readln(n);

    {input data}
    for i := 1 to n do
    begin
        write('Elemen Array ke- ',i,': '); readln(A[i]);
    end;
    
    {cetak array sebelum pengurutan}
    writeln;  textcolor(15); 
    write('Sebelum diurutkan: ');
    for i := 1 to n do
    write(A[i], '  ');
    writeln; writeln; textcolor(15);
    writeln('Proses pengurutan seleksi : ');
    for i := n downto 2 do
    begin
        imin := i;
        for j := i-1 downto 1 do
            if A[j] < A[imin] then imin := j;

    {tukar A[j] dengan A[imaks]}
    temp := A[i];
    A[i] := A[imin];
    A[imin] := temp;
    writeln;    textcolor(n-i+1);

    {cetak array tiap langkah pengurutan}
    write('Hasil akhir langkah ke-',i,' : ');
    for k := 1 to n do
    write(A[k], '  ');
    end;

    {cetak array setelah pengurutan}
    textcolor(15);   writeln('Hasil Pengurutan Seleksi : ');
    for i := 1 to n do
    write(A[i],'  ');
    readln;    
end.



// //3
// program urut_seleksi;
// uses crt;
// var
//  i, j, k, temp, imaks, n : Integer;
//  A, B, C : array [1..100] of Integer;
// begin
//  clrscr; textcolor(10);
//  write('Banyaknya Element Array : '); readln(n);

//  {input data}
//  for i := 1 to n do 
//  begin
//   write('Element ke-', i, ': '); readln(A[i]);
//  end;

//  {cetak array pengurutan}
//  writeln; textcolor(15);
//  write('Sebelum diurutkan : ');
//  for i := 1 to n do 
//  begin
//   write(A[i], ' ');
//  end;
//   writeln; writeln; textcolor(15);
//   writeln('Proses Pengurutan Seleksi : ');
//   for i := 1 to n - 1 do 
//   begin
//    imaks := i;
//     for j := i + 1 to n do
//      if (A[j] > A[imaks]) then
//      imaks := j;
//   {Tukar A[j] dengan A[imaks]}
//      temp := A[imaks];
//      A[imaks] := A[i];
//      A[i] := temp;
//      writeln; textcolor(i);

//   {Cetak Array tiap langkah pengurutan}
//      write('Hasil akhir langkah ke-', i, ' : ');
//      for k := 1 to n do 
//       begin
//        write(A[k], ' ');
//       end     
//   end;

//   {cetak array setelah pengurutan}
//   textcolor(15); writeln; writeln;
//   write('Hasil Pengurutan Seleksi  : ');
//   for i := 1 to n do 
//   begin
//    write(A[i], ' ');
//   end;
//   readln;
// end.

