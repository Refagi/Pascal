program tugasBesar;
uses crt;
var 
 Option, Panjang, Lebar, Luas, Keliling: Integer;
 Rumus, Piramid : char;
 i, j, Batas : Integer;
 
begin
 clrscr;
  write('silahkan pilih nomer yang anda inginkan (1 & 2)= ');
  readln(Option);

  case (Option) of
  1 : 
  begin
  writeln('kamu memilih Menghitung luas dan keliling persegi panjang');
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


program Menghitung Persegi Panjang dan Membuat Segitiga Piramid
Deklarasi
   Option, Panjang, Lebar, Luas, Keliling: Integer;
   Rumus, Piramid : char;
   i, j, Batas : Integer;

Deskripsi / Algoritma :
   readln(Option)

   case Option of 
   1 :
   write('silahkan pilih A atau B = ')
   readln(Rumus)

  if piramid = 'A' OR piramid = 'a' then
   begin
    write('masukan panjang = ')
    readln(panjang)
    write('masukan lebar = ')
    readln(lebar)

    Luas <===== panjang * lebar 
    writeln('Luas Persegi Panjang adalah = ', Luas);
  else if Rumus = 'B' OR Rumus = 'b' then
    write('masukan panjang = ')
    readln(Panjang)
    write('masukan lebar = ')
    readln(Lebar)

    keliling <===== 2 * (Panjang + Lebar)
    writeln('Keliling Persegi Panjang = ', keliling)
  else
    writeln('Pilihan tidak ada');
   endif

   2 : 
   write('silahkan pilih A atau B = ')
   readln(Piramid)
  if piramid = 'A' OR piramid = 'a' then
   begin 
    write('masukan jumlah angka = ')
    readln(Batas)

    for i := 1 to Batas do
     for j := 1 to i do
       write('*', ' ');
       writeln();
  else if piramid = 'B' OR piramid = 'b' then
    write('masukan jumlah angka = ');
    readln(Batas);
    
     i <===== 1 {inisialisasi}
     while(i <= Batas) do
       j <===== 1 {inisialisasi}
        while(j <= i) do
          write('*', ' ')
           j <===== j + 1
           writeln()
           i <===== i + 1
  else
    writeln('Pilihan tidak ada')
   endif

  else
    writeln('nomor tidak tersedia')
     endcase
readln
end Deskripsi / Algoritma
       

    
  
 