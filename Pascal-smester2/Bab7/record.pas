// program record_;
// uses crt;

// type
//  DataMhs = record
//  Npm: longInt;
//  Nama: string;
//  IP: real;
// end;

// var
//  jumlahMhs, i, j: byte;
//  mahasiswa: array[1..100] of DataMhs;
//  temp: DataMhs;
// begin
//  clrscr;
//  write('Jumlah Mahasiswa ? '); readln(jumlahMhs);
//  for i := 1 to jumlahMhs do
//  begin
//   writeln;
//   with mahasiswa[i] do
//    begin
//     writeln;
//     write('Npm ke ', i, ' ? '); readln(Npm);
//     write('Nama Mahsiswa ke ', i, ' ? '); readln(Nama);
//     write('IP Mahasiswa ke ', i, ' ? '); readln(IP);
//    end;
//  end;

//  for i := 1 to jumlahMhs - 1 do
//   for j := 1 to jumlahMhs - i do
//   begin
//    if mahasiswa[j].npm > mahasiswa[j + 1].npm then
//     begin
//      temp := mahasiswa[j];
//      mahasiswa[j] := mahasiswa[j + 1];
//      mahasiswa[j + 1] := temp;
//     end;
//   end;

//   writeln;
//   writeln('--------------------------------------');
//   writeln('Npm          Nama Mahasiswa         IP');
//   writeln('--------------------------------------');
//   for i := 1 to jumlahMhs do
//   begin 
//    with mahasiswa[i] do
//    writeln(Npm: 5, Nama: 15, IP: 15:2);
//   end;
// readln;
// end.


{record with another record}
program record_2;
uses crt;
type 
 tanggalLahir = record
  hari: 1..31;
  bulan: 1..12;
  tahun: word;
end;
 alamatTempat = record
  jalan: string[35];
  kota: string[25];
end;
 mhs = record
  nama: string[25];
  alamat: alamatTempat;
  tglLahir: tanggalLahir;
end;

var 
 dataMhs: mhs;

begin
 dataMhs.nama := 'Seya';
 dataMhs.alamat.jalan := 'Taman indah';
 dataMhs.alamat.kota := 'Jakarta';
 dataMhs.tglLahir.hari := 11;
 dataMhs.tglLahir.bulan := 09;
 dataMhs.tglLahir.tahun := 2004;

 with dataMhs do
begin
  writeln('Nama Mahasiswa = ', nama);

 with alamat do
 begin
  writeln('Alamat = ', jalan , ' - ', kota);
 end;

 with tglLahir do
 begin
  writeln('Taggal Lahir = ', hari:2, ' - ', bulan:2, ' - ', tahun:4);
 end;
end;
end.
