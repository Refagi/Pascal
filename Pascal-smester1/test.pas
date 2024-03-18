program nomor1Pdf;
uses crt;
var
 i, angka, Total, jumlah : Integer;

begin
 clrscr;
 write('Input Sebuah Angka (n) : ');
 readln(angka);
 Total := 0;
 jumlah := 0;
 write('Deret Bilangan : ');
 for i := 1 to angka do
  begin
    Total := Total + 5;
    jumlah := jumlah + Total;
    write(Total, ' ');
  end;
  writeln();
  writeln('Total : ', jumlah);

readln;
end.