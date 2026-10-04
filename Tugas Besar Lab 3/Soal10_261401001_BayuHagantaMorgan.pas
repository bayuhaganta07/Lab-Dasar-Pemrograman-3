{$mode objfpc}{$H+}
program Soal10;
var
  angka: integer;
begin
  write('Masukkan angka hari (1-7): ');
  readln(angka);

  case angka of
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
    else writeln('Input tidak valid. Masukkan angka 1 sampai 7.');
  end;
end.