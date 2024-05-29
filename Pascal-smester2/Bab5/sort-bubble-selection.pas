program sorting_bubble_selection;
uses crt;

type
  larik = array[1..100] of byte;

  objek = object
  bykData: byte;
  dataAwal: larik;
    
    procedure input;
    procedure tukar(var a, b: byte);
    procedure bubble(var data: larik);
    procedure selection(var data: larik);
    procedure cetak(data: larik);
  end;

procedure objek.input;
var
  i: byte;
begin
  repeat
    write('Banyaknya Data [max 100] ? '); readln(bykData);
    if bykData > 100 then
    begin
      writeln('Data yang dimasukkan kebanyakan');
      readKey; // Menunggu pengguna menekan tombol
      writeln;
    end;
  until (bykData <= 100);

  for i := 1 to bykData do 
  begin
    write('Data ke-', i, ' = '); readln(dataAwal[i]);
  end;
end;

procedure objek.tukar(var a, b: byte);
var
  temp: byte;
begin
  temp := a;
  a := b;
  b := temp;
end;

procedure objek.bubble(var data: larik);
var
  i, j: byte;
begin
  clrscr;
  writeln('Bubble sort');
  write('Awal = ');
  cetak(data);

  for i := 1 to bykData - 1 do 
  begin
    for j := 1 to bykData - i do
    begin
      if data[j] > data[j + 1] then
        tukar(data[j], data[j + 1]);
    end;
    writeln('Setelah langkah ke-', i, ' :');
    cetak(data);
  end;

  write('Akhir sorting = ');
  cetak(data);
  readKey;
  {Setelah hasil dari setiap langkah sorting ditampilkan, readkey digunakan untuk membuat program berhenti sementara dan menunggu input dari pengguna}
end;

procedure objek.selection(var data: larik);
var
  i, j, lok: byte;
begin
  clrscr;
  writeln('Selection sort');
  write('Awal = ');
  cetak(data);

  for i := 1 to bykData - 1 do
  begin
    lok := i;
    for j := i + 1 to bykData do 
    begin
      if data[lok] > data[j] then
        lok := j;
    end;
    if lok <> i then
      tukar(data[i], data[lok]);
    writeln('Setelah langkah ke-', i, ' :');
    cetak(data);
  end;

  write('Akhir = ');
  cetak(data);
  readKey;
end;

procedure objek.cetak(data: larik);
var
  i: byte;
begin
  for i := 1 to bykData do 
  begin
    write(data[i]:5, ' ');
  end;
  writeln;
end;

var
  sort: objek;
begin
  clrscr;
  sort.input;
  sort.bubble(sort.dataAwal);
  sort.selection(sort.dataAwal);
end.
