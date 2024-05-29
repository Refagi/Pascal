program file_text;
uses crt;
var
 berkasText: text;
 kodeBrg: string[5];
 namaBrg: string[20];
 unitBrg: integer;
 hargaBrg: real;
 reload: char;

begin
 Assign(berkasText, 'barang.txt'); rewrite(berkasText);

 reload := 'Y';
 while Upcase(reload) = 'Y' do
 begin
  clrscr;
   writeln('Kode Barang = ');  readln(kodeBrg);
   writeln('Nama Barang = ');  readln(namaBrg);
   writeln('Unit Barang = ');  readln(unitBrg);
   writeln('Harga Satuan Barang = ');  readln(hargaBrg);


  write(berkasText, kodeBrg:5, namaBrg:20, unitBrg, hargaBrg:10:2);
  write('Masukan data lagi ? (y/n) = '); 
  readln(reload);
 end;

 close(berkasText);
end.