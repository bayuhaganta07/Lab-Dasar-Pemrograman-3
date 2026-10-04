{$mode objfpc}{$H+}
program Soal5;
var
  M, N, i, j: integer;
  nilai, total, rata: real;
  jumlahLulus, jumlahTidakLulus: integer;
begin
  write('Masukkan jumlah mahasiswa (M): ');
  readln(M);
  write('Masukkan jumlah tugas (N): ');
  readln(N);

  jumlahLulus := 0;
  jumlahTidakLulus := 0;

  for i := 1 to M do
  begin
    total := 0;
    writeln;
    writeln('Mahasiswa ke-', i);

    for j := 1 to N do
    begin
      write('  Nilai tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;

    rata := total / N;
    writeln('  Rata-rata: ', rata:0:2);

    if rata >= 65 then
    begin
      writeln('  Status: LULUS');
      jumlahLulus := jumlahLulus + 1;
    end
    else
    begin
      writeln('  Status: TIDAK LULUS');
      jumlahTidakLulus := jumlahTidakLulus + 1;
    end;
  end;

  writeln;
  writeln('=== REKAPITULASI ===');
  writeln('Jumlah mahasiswa LULUS: ', jumlahLulus);
  writeln('Jumlah mahasiswa TIDAK LULUS: ', jumlahTidakLulus);
end.