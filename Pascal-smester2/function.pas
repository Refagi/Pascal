// program Faktorial;
// uses crt;

// var
//  n: Integer;

//  function F(n: Integer):integer;
//  var
//   i : Integer;
//  begin
//   f := 1;
//   for i := 1 to n do
//    f := f + 1;
//  end;
// begin
// clrscr;
//  write('Jumlah Faktorial: '); readln(n);
//  writeln(F(4));
// readln
// end.


program Faktorial;
uses crt;

var
 n: Integer;

function F(n: Integer): Integer;
var
 i, hasil: Integer;
begin
 hasil := 1;
 for i := 1 to n do
  hasil := hasil * i;
 F := hasil;
end;

begin
 clrscr;
 write('Jumlah Faktorial: '); readln(n);
 writeln('Faktorial dari ', n, ' adalah ', F(n));
 readln;
end.
