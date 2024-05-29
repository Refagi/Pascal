program perkalian_matrix;
uses crt;
type
  Larik = array [1..3, 1..3] of real;
var
  I, J, K : Integer;
  M, N, L : Integer;
  A, B, C : Larik; // Mengubah tipe data dari larik menjadi Larik

begin
  clrscr;
  write('Baris matrix pertama ? '); readln(M);
  write('Baris matrix kedua ? '); readln(N);
  write('Kolom matrix kedua ? '); readln(L);
  writeln;

  // Inisialisasi matriks A dan B
  writeln('Masukkan elemen matriks A:');
  for I := 1 to M do 
    for J := 1 to N do 
    begin
      write('A[', I, ',', J, ']: ');
      readln(A[I, J]);
    end;

  writeln('Masukkan elemen matriks B:');
  for I := 1 to N do 
    for J := 1 to L do 
    begin
      write('B[', I, ',', J, ']: ');
      readln(B[I, J]);
    end;

  // Perkalian matriks A dan B
  for I := 1 to M do 
    for J := 1 to L do
    begin
      // C[I, J] := 0; // Menginisialisasi elemen matriks C
      // for K := 1 to N do 
      //   C[I, J] := c[I, J] + A[I, K] * B[K, J];
      C[I, J] := A[I, J] * B[I, J];
    end;

  // Menampilkan hasil perkalian matriks
  writeln('Hasil perkalian matriks:');
  for I := 1 to M do 
  begin
    for J := 1 to L do
      write(C[I, J]:2:0, ' '); // Menambahkan format output agar lebih rapi
    writeln;
  end;

  readln;
end.


