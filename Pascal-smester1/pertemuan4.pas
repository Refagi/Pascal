// program if_Tunggal;
// uses crt;
// var 
// Nilai : Integer;

// begin
// clrscr;
// Nilai := 100;
//     if (Nilai > 60) then
//     begin
//     writeln('Anda Tidak Remed');
//     end;
// readln;
// end.

// program if_then_else;
// uses crt;
// var
//   Nilai : Integer;
// begin
//  clrscr;
//  writeln('Masukan Angka : '); readln(Nilai);
//  if (Nilai mod 2 <> 0) then{jika 6 di mod 2 tidak sama dengan 0}
//  begin
//     write('ini ganjil');
//  end
//  else
//  begin
//     write('ini genap');
//  end;
// readln;
// end.

{buatlah sebuah program untuk menerima inputan berupa nilai tahun.
kemudian tentukan apakah nilai tahun yg dimasukkan merupakan tahun kabisat atau bukan.
# tahun kabisat adalah tahun yang habis dibagi 4}

program Menghitung_tahun_Kabisat;
uses crt;
var
   Tahun : Integer;
begin
   clrscr;
   writeln('Masukan Tahun :'); readln(Tahun);

   if (Tahun mod 4 = 0) then
   begin
   writeln(Tahun, 'ini adalah Tahun Kabisat');
   end
   else
   begin
   writeln(Tahun,  ': ini bukan Tahun Kabisat');
   end;
   readln;
end.


{Buatlah sebuah program untuk menerima inputan 2 buah angka,
kemudian tentukan angka terbesar dari 2 buah angka yg diinputkan tadi.
#output yg diharapkan }
{Input angka pertama : 10 <inputan>
Input angka kedua : 15 <inputan>
Angka terbesar adalah 15 <ouputan>}
program Angka_Terbesar;
uses crt;
var
Angka1 : Integer;
Angka2 : Integer;
AngkaTerbesar : Integer;
begin
   writeln('Input Angka Pertama : '); readln(Angka1);
   writeln('Input Angka Kedua : '); readln(Angka2);

   if (Angka2 > Angka1 ) then
   begin
   AngkaTerbesar := Angka2;
   end
   else 
   begin
   AngkaTerbesar := Angka1;
   end;
   writeln('Angka Terbesar Addalah : ', AngkaTerbesar);
   readln;
end.