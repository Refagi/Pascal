program binary_search;
uses crt;

type
 tipe_larik = word;
 larik = array [1..8] of tipe_larik;

procedure searchBiner(x: larik; search: tipe_larik; bawah, atas: word; var urutanTemu: word);
var
 tengah: word;
begin
 if bawah > atas then
   urutanTemu := 0
 else
  begin
   tengah := (bawah + atas) div 2;
   if search = x[tengah] then
    urutanTemu := tengah
   else if search < x[tengah] then
     searchBiner(x, search, bawah, tengah - 1, urutanTemu)
   else
     searchBiner(x, search, tengah + 1, atas, urutanTemu);
  end;
end;

type 
 nama = string[20];

const 
 npm : larik = (1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241);
 namaMhs : array [1..8] of nama = ('reno', 'faza', 'givaro', 'ahmad', 'prams', 'kiko', 'tom', 'mumu');

var
 search: word;
 ketemu: word;
 lagi: char;

begin
 lagi := 'Y';
 while upcase(lagi) = 'Y' do
 begin
  clrscr;
  write('NPM mahasiswa yang di cari = '); readln(search);
  writeln;
  searchBiner(npm, search, 1, 8, ketemu);
  if ketemu = 0 then
   writeln('NPM mahasiswa ini tidak ada')
  else
   begin
   writeln('NPM mahasiswa = ', npm[ketemu]);
   writeln('nama mahasiswa = ', namaMhs[ketemu]);
   end;
   writeln;
   write('cari yang lain lagi ? (y/Y) = '); readln(lagi);
   end;
end.
