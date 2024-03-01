program nomer1 ;
uses crt;
var 
  i , angka, Kuadrat, total : Integer;
begin
  clrscr;

  write('Inputkan Bilangan (n) : ');
  readln(angka);
  write(angka , 'Bilangan Kuadrat pertama : ');
 
  Kuadrat := 0;
  total := 0;
  i := 1;
  while (i <= angka) do 
  begin
    Kuadrat := (i * i);
    write(Kuadrat, ' ');
    total := total + Kuadrat;
    i := i + 1;
  end;
  writeln();
  writeln( 'Total : ', total);


readln;
end.
// Inputkan Bilangan (n) : 5
// 5 Bilangan Kuadrat pertama : 1 4 9 16 25 
// Total : 55



program nomer2;
uses crt;
var
 bilPertama, selisih, total, i, jumlahBil, deretBil: Integer;
begin
 clrscr;

 write('Bilangan Pertama (a) : ');
 readln(bilPertama);
 write('Selisih (b) : ');
 readln(selisih);
 write('Jumlah Bilangan : ');
 readln(jumlahBil);

 write('Deret Bilangan : ');
 total := 0;

 repeat
  write(bilPertama, ' ');
  total := total + bilPertama;
  bilPertama := bilPertama + selisih;
  i := i + 1;
 until (i = jumlahBil);
 writeln();
 writeln('Total : ', total);

 
readln;
end.
// Bilangan Pertama (a) : 2
// Selisih (b) : 3
// Jumlah Bilangan : 5
// Deret Bilangan : 2 5 8 11 14 
// Total : 40




program nomor3;
uses crt;
var
 i, angka : Integer;
begin
  clrscr;

  write('Input Bilangan (n) : ');
  readln(angka);
  write('Output : ');

  for i := 1 to angka do 
  begin 
     if (i mod 3 = 0) OR (i mod 5 = 0) then
      begin
       write('Informatika', ' ');
      end
     else
      begin
        write(i, ' ');
      end; 
  end;
readln;
end.
// Input Bilangan (n) : 8
// Output : 1 2 Informatika 4 Informatika Informatika 7 8 




program nomer4;
uses crt;
var
 i, j, angka : Integer;
begin
  clrscr;
  write('Jumlah Baris Segitiga : ');
  readln(angka);

  for i := 1 to angka do
   begin
    for j := 1 to i do
     begin
      write(i * j, ' ');
     end;
     writeln();
   end;

readln
end.
// Jumlah Baris Segitiga : 3
// 1 
// 2 4 
// 3 6 9 