{Buatlah sebuah program untuk menginput 3 buah nilai, yaitu nilai Tugas, UTS dan UAS. 
kemudian hitung nilai akhir dengan rumus : 
- Nilai akhir = (20% * Tugas) + (30% * UTS) + (50% * UAS) Kemudian tampilkan nilai akhir terebut beserta status
kelulusan, jika nilai akhir >= 70 maka di nyatakan lulus, jika kurang dari 70 maka dinyatakan tidak lulus 
Tamplikan pula nilai huruf untuk nilai akhir yg di dapat, dimana nilai huruf mengacu pada tabel dibawah ini
91 - 100 = A, 76 - 91 = B, 61 - 75 = C, 41 - 60 = D, 0 - 40 = E  }

program MenghitungNilaiAkhir;
uses crt;
var
     nilaiTugas, nilaiUTS, nilaiUAS : Integer;
     nilaiAkhir : Real;
     nilaiHuruf : String;

begin
clrscr;
     write ('Masukan Nilai Tugas : '); readln(nilaiTugas);
     write ('Masukan Nilai UTS : '); readln(nilaiUTS);
     write ('Masukan Nilai UAS : '); readln(nilaiUAS);

nilaiAkhir := ((20/100) * nilaiTugas) + ((30/100) * nilaiUTS) + ((50/100) * nilaiUAS);
writeln('Nilai Akhir : ', nilaiAkhir);

if (nilaiAkhir >= 91) AND (nilaiAkhir <= 100) then
begin
nilaiHuruf := 'A'
end
else if (nilaiAkhir >= 76) AND (nilaiAkhir <= 90) then
begin
nilaiHuruf := 'B'
end
else if (nilaiAkhir >= 61) AND (nilaiAkhir <= 75) then
begin
nilaiHuruf := 'C'
end
else if (nilaiAkhir >= 41) AND (nilaiAkhir <= 60) then
begin
nilaiHuruf := 'D'
end
else 
begin
nilaiHuruf := 'E';
end;

begin 
writeln ('Nilai Huruf : ', nilaiHuruf);
end;
    if (nilaiAkhir >= 70) then
    begin 
    writeln('Selamat Anda dinyatakan Lusus');
    end
    else
    begin
    writeln('Waduh Anda Belum Lulus');
    end;
readln;    
end.