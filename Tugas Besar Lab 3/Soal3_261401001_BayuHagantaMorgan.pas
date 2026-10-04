{$mode objfpc}{$H+}
program Soal3;
var
  N, kategori, i: integer;
begin
  write('Masukkan nilai N: ');
  readln(N);
  writeln('Pilih kategori deret:');
  writeln('1 = Ganjil');
  writeln('2 = Genap');
  write('Pilihan (1/2): ');
  readln(kategori);

  if (kategori <> 1) and (kategori <> 2) then
  begin
    writeln('Kategori tidak valid.');
    halt(0);
  end;

  writeln('Deret angka hasil penyaringan:');
  i := 1;
  while i <= N do
  begin
    if (kategori = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    if (kategori = 2) and (i mod 2 = 1) then
    begin
      i := i + 1;
      continue;
    end;

    if (i mod 5) = 0 then
    begin
      i := i + 1;
      continue;
    end;

    write(i, ' ');
    i := i + 1;
  end;
  writeln;
end.