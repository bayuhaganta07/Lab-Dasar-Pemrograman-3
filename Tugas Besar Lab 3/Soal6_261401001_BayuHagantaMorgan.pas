{$mode objfpc}{$H+}
program Soal6;
var
  nilaiTugas, nilaiUTS, nilaiUAS, kehadiran, nilaiAkhir: real;
  indeks: char;
  status: string;
begin
  write('Nilai Tugas (30%): ');
  readln(nilaiTugas);
  write('Nilai UTS (30%): ');
  readln(nilaiUTS);
  write('Nilai UAS (40%): ');
  readln(nilaiUAS);
  write('Kehadiran (%): ');
  readln(kehadiran);

  nilaiAkhir := (0.30 * nilaiTugas) + (0.30 * nilaiUTS) + (0.40 * nilaiUAS);

  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    status := 'LULUS'
  else
    status := 'TIDAK LULUS';

  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln;
  writeln('Nilai Akhir: ', nilaiAkhir:0:2);
  writeln('Indeks Huruf: ', indeks);
  writeln('Status: ', status);
end.