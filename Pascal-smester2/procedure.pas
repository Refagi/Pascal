program luas_segitia;
procedure hitungLuas;

var
 alas, tinggi, luas : real;

 begin
  write('Alas: '); readln(alas);
  write('Tinngi: '); readln(tinggi);

  luas := alas * tinggi;
  write('Luas segitiga adalah: ', luas:2:0);
 end;
 begin
  writeln('Menghitung luas segitiga');
  hitungLuas;
readln;
end.