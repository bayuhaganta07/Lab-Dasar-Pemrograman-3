program Matriks;
uses crt;

var
  matrik: array[1..3, 1..3] of integer;
  i, j: integer;

begin
  clrscr;

  { Input nilai matriks }
  for i := 1 to 3 do
  begin
    for j := 1 to 3 do
    begin
      write('Masukkan matriks [', i, ',', j, ']: ');
      readln(matrik[i,j]);
    end;
  end;

  writeln;
  writeln('Isi Matriks:');

  { Menampilkan nilai matriks }
  for i := 1 to 3 do
  begin
    for j := 1 to 3 do
    begin
      write(matrik[i,j]:5);
    end;
    writeln;
  end;

  readln;
end.