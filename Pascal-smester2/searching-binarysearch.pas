program binary_search;
uses crt; 
 Type Tipe_larik = word;
 Larik = array [1..8] of Tipe_larik;

 procedure caribiner(x: Larik; search: Tipe_larik; Bawah, Atas: word; var urutKetemu: word);
 var 
 tengah: word;

begin
clrscr;
 if Bawah > Atas then
   urutKetemu := 0
 else
  begin
   tengah := (Bawah + Atas) div 2;
   if search = x[tengah] then
    urutKetemu := tengah
   else 
    if search < x[tengah] then
     caribiner(x, search, Bawah, tengah - 1, urutKetemu)
    else
     caribiner(x, search, tengah + 1, Atas, urutKetemu); 
  end;
end;

 type Nama = string[20];

 const 
  npm: Larik = (1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241);
  nama_mhs: array [1..8] of Nama = ('arief', 'ani', 'budi', 'citra', 'dewi', 'erni', ' fanny', 'ghana');

 var
  search: word;
  ketemu: word;
  lagi: char;
 
begin
  lagi := 'Y';
  while upcase(lagi) = 'Y' do
  begin
  clrscr;
   write('Npm mahasiswa yang dicari: ');
   readln(search);
   writeln;

   caribiner(npm, search, 1, 8, ketemu);
   if ketemu = 0 then
    writeln('Npm mahasiswa ini tidak ada')
   else
    begin
     writeln('Npm mahasiswa: ', npm[ketemu]);
     writeln('Nama mahasiswa: ', nama_mhs[ketemu]);
    end; 
  writeln;
  write('cari yang lain lagi (Y/T) ?'); readln(lagi);
  end;
readln;
end.


