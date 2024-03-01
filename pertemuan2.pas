program hitung_angka;
uses crt;
var 
angka1 : Integer;
angka2 : Real; {karena / menghasilkan bilangan real atau (koma,)}
angka3 : Integer;
angka4 : Integer;{kalo aslinya 4.5 , ini Real}
angka5 : Boolean;

begin 
clrscr;

angka1 := 10 div 5 * 4 + 4 - 3;
angka2 := 5 * 10 / 2 - 13 + 7;
angka3 := (10 mod 3) + (5 * 3 + 3);
angka4 := 5 * 2 mod 2;
{soal aslinya 4.5 * 2 mod 2, tidak akan bisa karena bilangan real 4.5 * 2 = 9.0 tidak bisa 
di modulus dengan bilangan Integer maka hasilnya akan error, jadi klo di ubah jdi 5 baru bisa}
angka5 := 3 + 5  * 3 < 10; 

writeln('hasil angka:',  angka1);
writeln('hasil angka:',  angka2);
writeln('hasil angka:',  angka3);
writeln('hasil angka:',  angka4);
writeln('hasil angka:',  angka5);


readln;
end.