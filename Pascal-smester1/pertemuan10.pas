// program Membuat_Repeat_Until;
// uses crt;
// var
//   i : Integer;
// begin 
//  clrscr;
//   i := 4;
//   repeat 
//    begin
//     write(i, ' ');
//     i := i + 4;
//    end;
//   until(i > 100);

// readln;
// end. 


//algoritma
program segitiga;
uses crt;
var 
  i, j : Integer;

begin
  clrscr;
   i := 1;
    while (i <= 5) do
    begin
      j := 1;
      while(j <= i) do
      begin
       write(j, ' ');
       j := j + 1;
       end;
       writeln();
       i := i + 1;
    end;
readln;
end.
{harusnya outputnya gini
1
1 2
1 2 3
1 2 3 4
1 2 3 4 5
tetapi gatau kalau di vs code jadi gini 
1 1 2 1 2 3 1 2 3 4 1 2 3 4 5}


// program segitiga;
// uses crt;
// var 
//   i, j : Integer;

// begin
//   clrscr;
//    i := 1;
//     while (i <= 5) do
//     begin
//       j := 1;
//       while(j <= 5) do
//       begin
//        write(i, ' ');
//        j := j + 1;
//        end;
//        writeln()
//        i := i + 1;
//     end;
// readln;
// end.
{harusnya outputnya gini
1 1 1 1 1
2 2 2 2 2
3 3 3 3 3 
4 4 4 4 4
5 5 5 5 5 



program tugasBesar;
uses crt;
var 
 Option, Panjang, Lebar, Luas, Keliling: Integer;
 Rumus, Piramid : char;
 i, j, Batas : Integer;
 
begin
 clrscr;
  write('silahkan pilih nomer yang anda inginkan = ');
  readln(Option);

  case (Option) of
  1 : 
  begin
  write('silahkan pilih A atau B = ');
  readln(Rumus);
   if (Rumus = 'A') OR (Rumus = 'a') then
    begin
     write('masukan panjang = ');
     readln(Panjang);
     write('masukan lebar = ');
     readln(Lebar);

      Luas := Panjang * Lebar;
      writeln('Luas Persegi Panjang adalah = ', Luas);
    end
    else if (Rumus = 'B') OR (Rumus = 'b') then
     begin
      write('masukan panjang = ');
      readln(Panjang);
      write('masukan lebar = ');
      readln(Lebar);

      keliling := 2 * (Panjang + Lebar);
      writeln('Keliling Persegi Panjang = ', keliling);
     end
    else 
      writeln('Pilihan tidak ada');
      end;
  2 :
  begin
  writeln('kamu memilih piramid bintang');
  write('silahkan pilih A atau B = ');
  readln(Piramid);

  if (Piramid = 'A') OR (Piramid = 'a') then
   begin
    write('masukan jumlah angka = ');
    readln(Batas);
    for i := 1 to Batas do
    begin
     for j := 1 to i do
       write('*', ' ');
       writeln();
      end;
    end
   else if (Piramid = 'B') OR (Piramid = 'b') then
    begin
     write('masukan jumlah angka = ');
     readln(Batas);
     i := 1;
     while(i <= Batas) do
      begin
       j := 1;
        while(j <= i) do
         begin
          write('*', ' ');
           j := j + 1;
          end;
           writeln();
           i := i + 1;
          end;
      end
      else 
       writeln('Pilihan tidak ada');
       end;

       else
        writeln('nomor tidak tersedia');
        end;
readln;
end.