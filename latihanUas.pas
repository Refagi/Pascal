program nomor1;
uses crt;
var 
 i, angka, batas, hasilKali : Integer;
 hasilBagi : Real;

begin
 clrscr;
   write('Input sebuah Angka : ');
   readln(angka);
   write('Input Batas : ');
   readln(batas);

   i := 1;
   while (i <= batas) do
    begin
     if (i mod 2 = 1) then
      begin
      hasilBagi := angka / i;
      writeln(angka, ' : ', i, ' = ', hasilBagi:0:1, ' sisa ', angka mod i );
      end
     else if (i mod 2 = 0) then
      begin
      hasilKali := angka * i;
      writeln(angka, ' x ', i, ' = ', hasilKali);
      end;
      i := i + 1;
     end;


readln;
end.
// 5 : 1 = 5.0 sisa 0
// 5 x 2 = 10
// 5 : 3 = 1.7 sisa 2
// 5 x 4 = 20
// 5 : 5 = 1.0 sisa 0
// 5 x 6 = 30
// 5 : 7 = 0.7 sisa 5
// 5 x 8 = 40
// 5 : 9 = 0.6 sisa 5
// 5 x 10 = 50





program nomor2;
uses crt;
var 
 i, atas, bawah, kelipatan, jumlah: Integer;
begin
 clrscr;
  write('Input Kelipatan : ');
  readln(kelipatan);
  write('Input Batas Bawah : ');
  readln(bawah);
  write('Input Batas Atas : ');
  readln(atas);
  jumlah := 0;

  i := bawah;
  while(i <= atas) do
  begin
   writeln(i, ' ');
   jumlah := jumlah + i;
   i := i + kelipatan;
  end;
   writeln('Total : ', jumlah);

readln;
end.
// Input Kelipatan : 3
// Input Batas Bawah : 3
// Input Batas Atas : 10
// 3 
// 6 
// 9 
// Total : 18





program nomor3;
uses crt;
var
 i, j, baris, kolom : Integer;

begin
 clrscr;
 write('Input Jumlah Baris : ');
 readln(baris);
 write('Input Jumlah Kolom : ');
 readln(kolom);

 for i := 1 to baris do
  begin
   writeln();
   for j := 1 to kolom  do
    begin
     if ((i + j) mod 2 = 0) then
      begin
       write('x', ' ')
      end
     else
      begin 
       write('o', ' ');
      end       
    end;
  end;

readln;
end.
// Input Jumlah Baris : 5
// Input Jumlah Kolom : 3

// x o x 
// o x o 
// x o x 
// o x o 
// x o x 





program nomer5;
uses crt;
 const 
  count = 100;
 type 
  arr = array[1..count] of Integer;
var 
 i, batas : Integer;
 arrCount : arr;

begin
  clrscr;
  write('Input Jumlah Index : ');
  readln(batas);
  
  for i := 1 to batas do
   begin
    write('Input bilangan ke - ', i, ' : ');
    readln(arrCount[i]);
   end;
  
  for i := 1 to batas do
   begin
    writeln(arrCount[i]);
   end;

readln;
end.
// Input bilangan ke - 1 : 12
// Input bilangan ke - 2 : 23
// Input bilangan ke - 3 : 34
// Input bilangan ke - 4 : 12
// Input bilangan ke - 5 : 23
// 12
// 23
// 34
// 12
// 23






program nomor1Pdf;
uses crt;
var
 i, angka, Total, jumlah : Integer;

begin
 clrscr;
 write('Input Sebuah Angka (n) : ');
 readln(angka);
 Total := 0;
 jumlah := 0;
 write('Deret Bilangan : ');
 for i := 1 to angka do
  begin
    Total := Total + 5;
    jumlah := jumlah + Total;
    write(Total, ' ');
  end;
  writeln();
  writeln('Total : ', jumlah);

readln;
end.
// Input Sebuah Angka (n) : 5
// Deret Bilangan : 5 10 15 20 25 
// Total : 75




program nomor2Pdf;
uses crt;
var
 i, a, b : Integer;

begin
 clrscr;
 write('Nilai Awal (a) : ');
 readln(a);
 write('Jumlah perulangan (b) : ');
 readln(b);
 write('Deret Bilangan : ');

 for i := 1 to b do
 begin
   write(a, ' ');
   a := a * 2;
 end;
 
readln;
end.
// Nilai Awal (a) : 2
// Jumlah perulangan (b) : 5
// Deret Bilangan : 2 4 8 16 32 



program nomor3Pdf ;
uses crt;
var 
 i, genap, ganjil, angka : Integer;
begin
  clrscr;
  write('Input Batasan angka : ');
  readln(angka);
  genap := 0;
  ganjil := 0;

  for i := 1 to angka - 1 do
  begin
    if (i mod 3 = 0) OR (i mod 5 = 0) then
     begin
       write(i, ' ');
     If (i mod 2 = 0) then
      begin
       genap := genap + 1;
      end
     else  
      begin
        ganjil := ganjil + 1;
      end
     end
  end;
  writeln();
  writeln('Jumlah Genap : ', genap);
  writeln('Jumlah Ganjil : ', ganjil);

readln;
end.
// Input Batasan angka : 20
// 3 5 6 9 10 12 15 18 
// Jumlah Genap : 4
// Jumlah Ganjil : 4