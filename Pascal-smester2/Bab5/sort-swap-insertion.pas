program Sorting_Swap_Insertion;
uses crt;
type
    larik = array [1..10] of byte;

    objek = object
    bykdata: byte;
    dataAwal: larik;

    procedure input;
    procedure tukar (var a,b : byte);
    procedure swap_insertion (data : larik);
    procedure cetak(data: larik);
end;
procedure objek.input;
var
  i : byte;
begin
   repeat
   write('Banyak Data [max 110] ? ');
   readln(bykdata);
   if (bykdata > 10 ) then
   begin 
      writeln(' Data yang dimasukkan kebanyakan ');
      readkey;
      writeln;
  end;
  until (bykdata <= 10) ;
  for i := 1 to bykdata do
  begin
     write(' Data ke- ',i,' = ');
     readln(dataAwal[i]);
  end;
end;

procedure objek.tukar(var a,b : byte);
var
   temp : byte;
begin
   temp := a;
   a := b;
   b := temp;
end;

procedure objek.swap_insertion (data : larik);
var 
   i,j,lok : byte;
begin
  clrscr;
  writeln(' Swap Insertion Sort ');
  write('awal ');
  cetak(data);
  for i := 1 to bykdata - 1 do
  begin
     writeln('I = ',i,' ');
     j := i + 1;
       begin
          while (data[j] < data[j - 1]) and (j > 1) do
          begin
             tukar (data[j], data[j - 1]);
             j := j - 1;
          end;
      end;
      writeln(' Akhir = ');
      cetak(data);
      readkey;
   end;
   end;
   
   procedure objek.cetak(data : larik);
   var
      i : byte;
   begin
      for i := 1 to bykdata do
      begin
        //  gotoxy (i * 10, wherey);
         write(data[i]:5);
      end;
      writeln;
   end;
   
   var
      sort : objek;
   begin
      clrscr;
      sort.input;
      sort.swap_insertion(sort.dataAwal);
   end.