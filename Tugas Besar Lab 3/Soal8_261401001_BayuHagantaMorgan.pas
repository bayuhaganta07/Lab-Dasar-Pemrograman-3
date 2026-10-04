{$mode objfpc}{$H+}
program Soal8;
var
  golongan: char;
  jamKerja: integer;
  gajiPokok, lembur, bonus, totalGaji: longint;
begin
  write('Masukkan golongan karyawan (A/B/C): ');
  readln(golongan);
  write('Masukkan total jam kerja per minggu: ');
  readln(jamKerja);

  case upcase(golongan) of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
    else
      begin
        writeln('Golongan tidak valid.');
        halt(0);
      end;
  end;

  if jamKerja > 40 then
    lembur := (jamKerja - 40) * 20000
  else
    lembur := 0;

  bonus := 0;
  if (upcase(golongan) = 'C') and (jamKerja > 50) then
    bonus := 100000;

  totalGaji := gajiPokok + lembur + bonus;

  writeln;
  writeln('=== RINCIAN GAJI ===');
  writeln('Golongan: ', upcase(golongan));
  writeln('Gaji Pokok: Rp ', gajiPokok);
  writeln('Lembur: Rp ', lembur);
  writeln('Bonus: Rp ', bonus);
  writeln('Total Gaji Akhir: Rp ', totalGaji);
end.