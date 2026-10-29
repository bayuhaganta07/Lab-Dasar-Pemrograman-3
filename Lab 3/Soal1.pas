program JumlahMatriksSimple;
uses crt;
var
  MatA, MatB, MatC : array[1..5, 1..5] of integer;
  br, kl, br2, kl2, i, j : integer;
begin
clrscr;
  write('Baris Matriks 1: '); readln(br);
  write('Kolom Matriks 1: '); readln(kl);
  write('Baris Matriks 2: '); readln(br2);
  write('Kolom Matriks 2: '); readln(kl2);

  if (br <> br2) or (kl <> kl2) then
  begin
    writeln('Tidak bisa dijumlahkan! Ukuran harus sama.');
  end
  else
  begin
    writeln('Input Matriks A:');
    for i := 1 to br do
      for j := 1 to kl do
      begin
        write('A[', i, ',', j, ']: ');
        readln(MatA[i, j]);
      end;
    writeln('Input Matriks B:');
    for i := 1 to br do
      for j := 1 to kl do
      begin
        write('B[', i, ',', j, ']: ');
        readln(MatB[i, j]);
      end;

    for i := 1 to br do
      for j := 1 to kl do
        MatC[i, j] := MatA[i, j] + MatB[i, j];

    writeln('Hasil A + B:');
    for i := 1 to br do
    begin
      for j := 1 to kl do
        write(MatC[i, j]:4);
      writeln;
    end;
  end;
  readln;
end.