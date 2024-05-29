{Bab 1}

// program menghitung_rata_rata;
// uses crt;
// var i,k,n : Integer;
// jumlah: longInt;
// RATA: real;
// a: array [0..100] of longInt;
// begin
// clrscr;

// write('Banyaknya bilangan yang akan di hitung: '); readln(n);
// i := 0; k := 0;

// while n > i do
// begin 
//  i := i + 1;
//  write('masukan bilangan: '); readln(a[i])
// end;
//  write('element arraynya adalah: ');
//  for i := 1 to n do
//  begin
//   write(a[i], ' ');
//  end;
// writeln();

// for i:= 1 to n do
// jumlah := jumlah + a[i];

// writeln('jumlah akhir = ', jumlah);

// RATA:= jumlah/n ;
// writeln('Dan Rata-rata = ',RATA:0:2);
// writeln('selesai');

// readln;
// end.


program array_Record;
uses crt;
Type 
Mahasiswa = record
Nama : string; Npm : string; Nilai : Integer;
end;

var 
Mhs : array [1..10] of Mahasiswa; jum : byte; i, j : Integer;

procedure input;
begin
clrscr;
 writeln('Data Mhs');
 write('Jumlah Data = '); readln(jum);
 writeln();

for i := 1 to jum do
begin
 writeln('Data ke - ', i);
 write('Nama : '); readln(Mhs[i].Nama);
 write('Npm : '); readln(Mhs[i].Npm);
 write('Nilai : '); readln(Mhs[i].Nilai);
writeln();
 end;
end;

procedure judul;
begin
clrscr;
 Gotoxy(13, 1); writeln(' Data Mahasiswa ');
 //gotoxy untuk mengataur baris dan kolom
 writeln('--------------------------------------------------');
 Gotoxy(3, 3); write('No');
 Gotoxy(7, 3); write('Nama');
 Gotoxy(27, 3); write('Npm');
 Gotoxy(45, 3); write('Nilai');
writeln();
writeln('--------------------------------------------------');
end;

procedure tampil;
begin
clrscr;
judul;
 for i := 1 to jum do
 begin
  Gotoxy(3, 4 + i); write(i);
  Gotoxy(7, 4 + i); write(Mhs[i].Nama);
  Gotoxy(27, 4 + i); write(Mhs[i].Npm);
  Gotoxy(45, 4 + i); write(Mhs[i].Nilai);
writeln();
 end;
writeln('--------------------------------------------------');
end;

begin
clrscr;
 input;
 tampil;
readln;
end.

