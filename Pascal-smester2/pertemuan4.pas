// //mengggunakan procedure
// program faktorial_procedur;
// uses crt;
// procedure faktorial(n: byte; var result: longInt);
// begin
//  if n <= 1 then
//   result := 1
//  else
//   begin
//    faktorial(n - 1, result);
//    result := n * result;
//    end;
// end;

// var
//  n: byte;
//  f: longInt;

// begin
//  write('Berapa faktorial dari = '); readln(n);
//  faktorial(n,f); 
//  writeln('faktorial = ', f); 
//  readln;
// end.

// //menggunakan function
// program faktorial;
// uses crt;
// function faktorial(n: byte): longInt;
// begin 
//  if n <= 1 then
//    faktorial := 1
//   else
//   begin
//    faktorial := n * faktorial(n -1);
//   end;
// end;
// var 
//  n : byte;
// begin
//  write('faktorial = '); readln(n);
//  writeln('faktorial = ', faktorial(n)); 
//  readln;
// end.


// program hitung_fibonacci;
// uses crt;
// function fibonacci(n: word): word;
// begin
//  if n < 2 then
//   fibonacci := 2
//  else
//   fibonacci := fibonacci(n-2) + fibonacci(n-1);
// end;

// var
//  n: word;

// begin
//  write('suku ke berapa ? = '); readln(n);
//  writeln('nilai suku ke ', n, ' adalah = ', fibonacci(n));
//  readln;
// end.
 

 
 //menghitung rata-rata dengan procedure dan array
//  program hitung_ratarata;
//  uses crt;
//  var
//  n: integer;
//  jumlah: longInt;
//  rata_rata: real;
//  a: array [0..100] of integer;

//  procedure inputData(var a: array of integer; var i: integer);
//  begin
//  i := 0;
//  while a[i] <> -1 do 
//  begin
//   i:= i + 1;
//   write('masukkan bilangannya = '); readln(a[i]);
//  end;
//  i := i - 1;
// end;

// procedure resultArray(a: array of integer; n: integer);
// var
//  i: integer;

// begin
//  for i := 1 to n do
//  write(a[i], ', ');
// end;

// procedure countAmmount(a: array of integer; x: integer; var total: longInt);
// var
//  i: integer;

// begin
//  for i := 1 to x do 
//  total := total + a[i];
// end;

// begin
//  jumlah := 0;
//  inputData(a, n);
//  writeln('Banyaknya bilangan = ', n);
//  write('element array nya adalah = ');  resultArray(a, n);
//  writeln;
//  countAmmount(a, n, jumlah);
//  writeln('jumlah akhir = ', jumlah);
//  rata_rata := jumlah / n;
//  writeln('Rata rata adalah = ', rata_rata:2:1);
//  readln;
// end.


// menghitung array dengan function dan array
program hitung_ratarata;
uses crt;
var
 k, n, max, min: integer;
 jumlah: longInt;
 rata_rata: real;
 a: array [0..100] of integer;

procedure inputData;
begin
 n := 0;
 while a[n] <> -1 do 
 begin
  n := n + 1;
  write('masukan bilangannya = '); readln(a[n]);
 end;
 n := n - 1;
end;

procedure resultArray;
var
 i: integer;

begin
 for i := 1 to n do
  write(a[i], ', ');
end;

function total(b: array of integer; x: integer): longInt;
var
 i: integer;
 temp: longInt;

begin
 temp := 0;
 for i := 1 to x do
 temp := temp + b[i];
 total := temp;
end;

function MINIMUM(b: array of integer; x: integer): longInt;
var
 i: integer;
 temp: integer;
begin
 temp := b[1];
 for i := 2 to x do
 if temp > b[i] then
  temp := b[i];
  MINIMUM := temp;
end;

function MAXIMUM(d: array of integer; n: integer): longInt;
var
 i: integer;
 temp: integer;

begin
 temp := d[1];
 for i := 2 to n do
 if temp < d[i] then
  temp := d[i];
  MAXIMUM := temp;
end;

begin
 jumlah := 0;
 inputData;
 writeln('Banyaknya bilangan = ', n);

 write('Element array nya adalah = '); 
 resultArray;
 writeln;

 jumlah := total(a, n);
 writeln('Jumlah akhir = ', jumlah);

 rata_rata := jumlah / n;
 writeln('Rata rata nya = ', rata_rata:2:2);

 min := MINIMUM(a, n);
 writeln('angka Terkecil = ', min);

 max := MAXIMUM(a, n); 
 writeln('angka Terbesar = ', max);

 readln;
end.
