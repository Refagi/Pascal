program praktikum_struk;
uses crt, SysUtils;
const 
  garis = '========================================================================';
  count = 50;

type 
  dataUser = record
    tanggal: TDateTime;
    formatTanggal, alamat: string[15];
    nama: string[10];
    harga, jumlah: array[1..count] of real;
    pcs: array[1..count] of integer;
    totalHarga: real;
    barang: array[1..count] of string;
end;

type 
  data = array[1..count] of dataUser;

var 
  num1, num2: integer;
  close1, close2, pilihan: string;
  k: data;

procedure Menu(var k: data);
begin
  num1 := 0;
  close1 := '';
  close2 := '';

  repeat
  clrscr;
    num1 := num1 + 1;
    if (num1 > count) then
    begin
      writeln('Batas maksimum struk tercapai!');
      exit;
    end;

    // Menyimpan tanggal saat ini
    k[num1].tanggal := Now;
    k[num1].formatTanggal := FormatDateTime('dd-mm-yyyy', k[num1].tanggal);

    writeln(garis);
    writeln('                         MSU NUSANTARA ');
    writeln(garis);
    write('Masukan Nama: '); 
    readln(k[num1].nama);
    write('Alamat: '); 
    readln(k[num1].alamat);

    // Memulai pengisian barang
    num2 := 0; k[num1].totalHarga := 0;
    repeat
      clrscr;
      num2 := num2 + 1;
      if (num2 > count) then
      begin
        writeln('Batas maksimum barang tercapai!');
        exit;
      end;
      
      writeln(garis);
      writeln('                         MSU NUSANTARA ');
      writeln(garis);
      writeln('Silahkan pilih (nomer 1 - 10):');
      writeln('1. Chiki  Rp.5000           6. Minyak Rp. 20000');
      writeln('2. Mizone  Rp.7000          7. Gula Pasir Rp. 17000');
      writeln('3. Tango  Rp.3000           8. Roll kabel Rp. 30000');
      writeln('4. Pocari Sweat  Rp.7000    9. Tepung Terigu Rp. 10000');
      writeln('5. Sari Roti Rp.6000        10. Garam Rp.3000');
      write('Silahkan pilih kategori: '); 
      readln(pilihan);

    case pilihan of
      '1': k[num1].barang[num2] := 'Chiki';
      '2': k[num1].barang[num2] := 'Mizone';
      '3': k[num1].barang[num2] := 'Tango';
      '4': k[num1].barang[num2] := 'Pocari Sweat';
      '5': k[num1].barang[num2] := 'Sari Roti';
      '6': k[num1].barang[num2] := 'Minyak';
      '7': k[num1].barang[num2] := 'Gula Pasir';
      '8': k[num1].barang[num2] := 'Roll kabel';
      '9': k[num1].barang[num2] := 'Tepung Terigu';
      '10': k[num1].barang[num2] := 'Garam';
    else
      begin
        writeln('Barang tidak tersedia!');
        exit;
      end;
    end;

    write('Berapa Pcs: '); readln(k[num1].pcs[num2]);
    write('Harga satuan: '); readln(k[num1].harga[num2]);
    k[num1].jumlah[num2] := k[num1].pcs[num2] * k[num1].harga[num2];  // Menghitung jumlah per pcs
    k[num1].totalHarga := k[num1].totalHarga + k[num1].jumlah[num2];

      write('Apakah Anda ingin menambah barang? (y/t): ');
      readln(close1);

    until (close1 = 't');

    write('Apakah Anda ingin menghapus dan mengisi data baru? (y/t): ');
    readln(close2);

  until (close2 = 't');
end;

procedure result_struk(var k: data);
var 
 i: integer;
 bayar: real;
 kembalian: real;
begin
  repeat
  clrscr;
  writeln(garis);
  writeln('**    *  *     *  *****   ****   **    *  *******   ****   ****    ****  ');
  writeln('* *   *  *     *  *      *    *  * *   *     *     *    *  *   *  *    * ');
  writeln('*  *  *  *     *  *****  * ** *  *  *  *     *     * ** *  ****   * ** * ');
  writeln('*   * *  *     *      *  *    *  *   * *     *     *    *  * *    *    * ');
  writeln('*    **  * * * *  *****  *    *  *    **     *     *    *  *  *   *    * ');
  writeln();
  writeln('              JL. Alam Raya 2 Block D1/22 Puri Gading'); 
  writeln('               Jati Melati - Pondok Melati - Bekasi'); 
  writeln('                     Telp. (021) 8430 8489');
  writeln('                       WA: 0811 991 1719');
  writeln(garis);
  write('Nama: ', k[num1].nama);
  write('              Alamat: ', k[num1].alamat);
  writeln('            Tanggal: ', k[num1].formatTanggal);
  writeln(garis);
  writeln('||  No  ||  Pcs  ||   Nama Barang   ||   Harga Satuan   ||   Jumlah   ||');
  writeln(garis);
  for i := 1 to num2 do 
  begin
    writeln('  ',i:4,'   ',k[num1].pcs[i]:5, '   ', k[num1].barang[i]:15, '      ', k[num1].harga[i]:10:2, '      ','   ',k[num1].jumlah[i]:10:2);
  end;
    writeln(garis);
    writeln('Total yang harus dibayar: ', k[num1].totalHarga:10:2);
    write('Pembayaran Rp.: '); readln(bayar);
  
  // if(bayar < k[num1].totalHarga) then
  // begin
  //   writeln('Uang anda kurang!');
  // end
   until(bayar >= k[num1].totalHarga);

  kembalian := bayar - k[num1].totalHarga;
  writeln('Kembalian anda Rp.: ', kembalian:10:2);
  writeln('Terima kasih sudah belanja di sini, sampai jumpa lagi ');
end;
begin
  Menu(k);  // Memanggil prosedur untuk mengisi struk
  result_struk(k);  // Menampilkan struk
  exit;
  readln;
end.