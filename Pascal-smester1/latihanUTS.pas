{Buatlah sebuah program dengan menggunakan bahasa pascal, untuk menghitung gaji bersih seseorang karyawan
denagn ketentuan, GAJI BERSIH = GAJI POKOK + TUNJANGAN - PAJAK, tunjangan karyawan adalah20% dari besaran gaji
pokok sedangkan pajak adalah 15% dari gaji pokok ditambah tunjangan
program menerima 2 buah inputan berupa nama karywan dan gaji pokok, serta menampilkan besaran gaji bersih
yang diterima karywan, contoh inputan :
Nama karyawan : <inputan>
Gaji Pokok : 5000000 <inputan>
Gaji Bersih yg diterima <nama> sebesar 5100000 }

program MenghitungGajiBersih;
uses crt;
var
  namaKaryawan : String;
  gajiPokok, tunjangan, pajak, gajiBersih : real;
begin
 clrscr;
   write('Nama Karyawan : '); readln(namaKaryawan);
   write('Gaji Pokok : '); readln(gajiPokok); 
tunjangan := ((20/100) * gajiPokok);
pajak := ((15/100) * (gajiPokok + tunjangan));
gajiBersih := gajiPokok + tunjangan - pajak;

writeln ('Gaji bersih yang diterima oleh ', namaKaryawan,  ' adalah ' ,gajiBersih:0:0);

readln;
end.

{Sebuah perusahaan ojek online menentukan tarif berdasarkan jarak tempuh, dimana untuk 
minimal 4Km pertama adalah Rp. 9.500,- sedangkan untuk Km selanjutnya adalah Rp. 
2.500,- per Km. Selain itu, pihak perusahaan ojek online juga memberikan promo 
berdasarkan jarak tempuh sebagai berikut: 
jarak tempuh    :       diskon    
     0-10 km               0%
     10-15 km             Rp 2500
     >15 km               Rp 5000
Dari studi kasus diatas, buatlah sebuah program dengan menggunakan bahasa 
pemrograman pascal, dimana program menerima 2 buah inputan, yaitu nama customer 
dan jarak yang akan ditempuh. Kemudian menampilkan besaran biaya yang harus dibayar 
customer! 
Contoh output
Nama Customer : Tony Stark <inputan> 
Jarak yang akan ditempuh (Km) : 12 <inputan> 
Selamat, anda mendapatkan potongan Rp. 2000 
Tarif yang harus dibayarkan Tony Stark adalah sebesar 27500}

program menghitungOngkos;
uses crt;
var
   namaCostumer : String;
   jarak, potonganHarga, hargaOngkos, totalOngkos : real;
begin
   write('Nama Customer : ');
   readln(namaCostumer);
   write('Jarak yang akan ditempuh (Km) : ');
   readln(jarak);

  if (jarak >= 0) AND (jarak <= 10) then
    begin
      potonganHarga := 0;
    end
  else if (jarak >= 10) AND (jarak <= 15) then 
    begin
      potonganHarga := 2000;
    end
  else if (jarak > 15) then
    begin
      potonganHarga := 5000;
    end;

 if (jarak <= 4) then
    begin
      hargaOngkos := 9500;
    end
  else 
    begin
      hargaOngkos := 9500 + ((jarak - 4) * 2500);
    end;

begin
totalOngkos := hargaOngkos - potonganHarga;
writeln('Selamat, anda mendapatkan potongan Rp', potonganHarga:0:0);
writeln('Tarif yang harus dibayarkan Tony Stark adalah sebesar ', totalOngkos:0:0);          
end;
readln;
end.




{buatlah algoritma untuk menentukan luas persegi panjang, keliling persegi panjang, dan panjang diagonalnya, 
lengkapi program dengan pilihan menu : 1)luas 2) keliling 3)panjang diagonal 4)keluar program. 
pada setiap pilihan menu, dibaca panjang dan lebar empat persegi panjang.
luas persegi panhang = P * L,  keliling = 2*P + 2*L,  panjang diagonal = sqrt(P*P + L*L)}

program menuRumusPersegiPanjang;
uses crt;
var 
   p, l, Keliling, Luas, Diagonal: real;
   menuRumus : integer;
begin
clrscr;
    writeln('silahkan pilih angka (1-4)');
    writeln('1. Menghitung Luas Persegi Panjang');
    writeln('2. Menghitung Keliling Persegi Panjang');
    writeln('3. Menghitung Panjang Diagonal Persegi Panjang');
    writeln('4. Keluar program');
    writeln('==========');
    write('Masukkan pilihan menu: ');
    readln(menuRumus);

    case (menuRumus) of
    1 : begin
        write('Masukan Panjang : '); readln(p);
        write('Masukan lebar : '); readln(l);
        Luas := ( p * l );
        writeln('Luas Persegi Panjang = ', Luas:0:0);
        end;
    2 : begin
        write('Masukan Panjang : '); readln(p);
        write('Masukan lebar : '); readln(l);
        Keliling := (2 * p + 2 * l);
        writeln('keliling Persegi Panjang = ', keliling:0:0);
        end;
    3 : begin
        write('Masukan Panjang : '); readln(p);
        write('Masukan lebar : '); readln(l);
        Diagonal := sqrt(p * p) + (p * l);
        writeln('Panjang Diagonal = ', Diagonal:0:0);
        end;
    4 : begin
        writeln('keluar Program');
        end;
    else
        writeln('Angka yang di masukan salah');
    end;
readln;
end.


