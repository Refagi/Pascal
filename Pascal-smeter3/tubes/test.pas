program minggu_3;
uses crt;
const max=10;
const garis='===========================================================';
type rec_struk=record
nomer,tanggal,kasir:string;
nama:array[1..max] of string;
harga,jumlah:array[1..max] of real;
qtt:array[1..max] of byte;
total:real;
end;
type larik=array[1..max] of rec_struk;
var struk:larik; i,n1,n2:byte;
ya:char;
procedure isi_struk(var x:larik);
Begin
repeat
inc(n1);
            writeln(garis);
            writeln('          Beta Mart IST AKPRIND YOGYAKARTA');
            writeln(garis);
            x[n1].total:=0;n2:=0;
            write('Masukan nomer struk  : ');readln(x[n1].nomer);
            write('Masukan Nama Kasir   : ');readln(x[n1].kasir);
            write('Masukan tanggal      : ');readln(x[n1].tanggal);
repeat
begin
clrscr;
inc(n2);
            writeln(garis);
            writeln('          Beta Mart IST AKPRIND YOGYAKARTA');
            writeln(garis);
writeln('jika mau berhenti masukan nama barang = selesai');
write('Masukan nama barang : ');readln(x[n1].nama[n2]);
if x[n1].nama[n2]<>'selesai' then
begin
write('masukan harga barang : Rp.');readln(x[n1].harga[n2]);
write('masukan jumlah barang : ');readln(x[n1].qtt[n2]);
x[n1].jumlah[n2]:=x[n1].harga[n2]*x[n1].qtt[n2];
x[n1].total:=x[n1].total+x[n1].jumlah[n2];
end;end;
until (x[n1].nama[n2]='selesai') or (n2>=max);
dec(n2);
write('Apakah anda ingin hapus data dan isi lagi ? <y/t>');readln(ya);
until (ya<>'y');
end;

procedure cetak_struk(var x:larik);
var bayar,kembali:real; label ulang;

begin
clrscr;
writeln;
writeln(garis);
writeln('            Struk Beta Mart IST AKPRIND YOGYAKARTA '); writeln;
writeln(garis);
writeln;
writeln('Nomer      : ',x[n1].nomer);
writeln('Nama Kasir : ',x[n1].kasir);
writeln('Tanggal    : ',x[n1].tanggal); writeln;
writeln('No          Nama Barang      Harga      Qtt        Jumlah');
writeln(garis);
writeln(garis);
for i:=1 to n2 do
writeln(i:2,'',x[n1].nama[i]:15,'          ',x[n1].harga[i]:8:2,'     ',x[n1].qtt[i]:3,'     ',x[n1].jumlah[i]:8:2);
writeln(garis);
writeln('total belanja = Rp',x[n1].total:10:2);
ulang:
write('bayar         = Rp   ');readln(bayar);
if bayar<x[n1].total then begin writeln('pembayaran kurang,ulangi'); goto ulang; end else
begin kembali:=bayar-x[n1].total;
writeln('kembali       = Rp   ',kembali:8:2);
writeln('terimakasih,selamat berkunjung kembali');
writeln(garis);
end;
end;
begin
isi_struk(struk);
cetak_struk(struk);
readln;
end.


// Program Kasir;
//         uses crt;
//     var nama_barang:array[1..20] of string;
//     harga:array[1..20] of real;
//     banyak:array[1..20] of byte;
//     kata,grs:string;
//     x,y,i,j:byte;
//     jum_harga,total_harga,disc,total_bayar,uang:real;
// begin
//      clrscr;
// grs:='==========================================================================';
//        kata:='Program Kasir';
//        x:=round((78-length(kata))/2);
//        gotoxy(x,2);writeln(kata);
//        x:=round((78-length(grs))/2);
//        gotoxy(x,3);write(grs);
//        {-----------------------------}
//        gotoxy(x,4);writeln('SAMSUL Fashion AND Art');
//        gotoxy(x,5);write(grs);
//        gotoxy(x,6);writeln(' I No I Nama Barang      I  Harga Satuan IBanyak  I   Jumlah Harga ');
//        gotoxy(x,7);write(grs);
// {--------------------------------------------------------------------------------------------------------}
//        i:=0;
//        total_harga:=0;
//        repeat
//        i:=i+1;
//        gotoxy(x,7+i);write(' I ',i);
//        gotoxy(x+5,7+i);write(' I ');
//        gotoxy(x+7,7+i);readln(nama_barang[i]);
//        if nama_barang[i] <>'' then
//        begin
//        gotoxy(x+25,7+i);write('I');
//        gotoxy(x+28,7+i);readln(harga[i]);
//        gotoxy(x+28,7+i);writeln(harga[i]:10:0);
//        gotoxy(x+41,7+i);write('I');
//        gotoxy(x+44,7+i);readln(banyak[i]);
//        gotoxy(x+50,7+i);write('I');
//        jum_harga:=harga[i]*banyak[i];
//        gotoxy(x+53,7+i);writeln(jum_harga:10:0);
//        gotoxy(x+56,7+i);writeln('');
//        total_harga:=total_harga+jum_harga;end;
//        until nama_barang[i]='';
// {---------------------------------------------------------------------------}
//        disc:=0;
//        if(total_harga>10000) and (total_harga<100000) then
//        disc:=0.05*total_harga
//        else
//        if (total_harga>=100000) then
//        disc:=0.1*total_harga;
// {---------------------------------------------------------------------------}
//        kata:='Struk Penjualan';
//        y:=round((78-length(kata))/2);
//        gotoxy(y,2);writeln(kata);
//        j:=i-1;
//        gotoxy(x,8+j);write(grs);
//        gotoxy(x,8+j+1);write('Total Belanja : ');
//        gotoxy(x+53,8+j+1);write(total_harga:10:0);
//        gotoxy(x,8+j+2);write('Discount 10% : ');
//        gotoxy(x+53,8+j+2);write(disc:10:0);
//        gotoxy(x,8+j+3);write(grs);
//        gotoxy(x,8+j+4);write('Total Bayar : ');
//        total_bayar:=total_harga-disc;
//        gotoxy(x+53,8+j+4);write(total_bayar:10:0);
//        gotoxy(x,8+j+5);writeln('Uang diBayar');
//        gotoxy(x+53,8+j+5);readln(uang);
//        gotoxy(x+53,8+j+5);writeln(uang:10:0);
//        gotoxy(x,8+j+6);write(grs);
//        gotoxy(x,8+j+7);write('Uang Kembali');
//        gotoxy(x+53,8+j+7);write(uang-total_bayar:10:0);
//        readln;
// end.
 