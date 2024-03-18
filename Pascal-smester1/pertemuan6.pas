{Buatlah program untuk menghitung 3 buah nilai, yaitu nilai Tugas, UTS dan UAS, Kemudian hitung nilai akhir 
dengan rumus : 
-Nilai Akhir = (20% * Tugas) + (30% * UTS) + (50% * UAS)
Kemudian tempilkan nilai akhir tersebut beserta status kelulusan , jika nilai akhir >= 70 maka tampilkan LULUS
jika kurang dari 70 maka dinyatakan tidak lulus,
tampilakn pula nilai hhuruf untuk nilai akhir yang di dapat 
nilai akhir :  nilai huruf
    91-100          'A'
    76-90           'B'
    61-75           'C'
    41-60           'D'
    0-40            'E'
 output  nya
 input nilai Tugas : 90  <inputan>
 input nilai UTS   : 90  <inputan>
 input nilai UAS   : 90  <inputan>
 Nilai Akhir       : 90
 Nilai Huruf       : A
 Selamat anda dinyatakan lulus   }

 program MenghitungGaji;
 uses crt;
 var
    gajiPokok, tunjangan, hasilGaji : Real;
    golongan, pendidikan : String;
begin
 clrscr;
    write('Input Golongan Karyawan : '); 
    readln(golongan);
    write('Input Pendidikan Karyawan : ');
    readln(pendidikan);

if (golongan = 'A') OR (golongan = 'a')then
begin
 if (pendidikan = 'SMA') OR (pendidikan = 'sma')  then
 begin
  gajiPokok := 3000000;
 end
 else if (pendidikan = 'S1') OR (pendidikan = 's1') then
 begin
  gajiPokok := 4000000;
 end;
end;

if (golongan = 'B') OR (golongan = 'b') then
begin
 if (pendidikan = 'SMA') OR (pendidikan = 'sma')  then
 begin
  gajiPokok := 4000000;
 end
else if (pendidikan = 'S1') OR (pendidikan = 's1') then 
 begin
  gajiPokok := 6000000;
 end;
end;

if (golongan = 'A') OR (golongan = 'a') then
begin
 if (pendidikan = 'SMA') OR (pendidikan = 'sma')   then
 begin
  tunjangan := 2000000;
 end
 else if (pendidikan = 'S1') OR (pendidikan = 's1') then
 begin
  tunjangan := 3000000;
 end;
end;

if (golongan = 'B')  OR (golongan = 'b')  then
begin
 if (pendidikan = 'SMA') OR (pendidikan = 'sma')   then
 begin
  tunjangan := 3000000;
 end
else if (pendidikan = 'S1')  OR (pendidikan = 's1') then 
 begin
  tunjangan := 5000000;
 end;
end;

begin
hasilGaji := gajiPokok + tunjangan;
writeln('Gaji yang di dapat adalah : ', hasilGaji:0:0);
end;
readln;
end.
   