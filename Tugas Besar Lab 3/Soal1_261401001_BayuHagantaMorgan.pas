{$mode objfpc}{$H+}
program Soal1;
const
  MAX = 100;
var
  N, i: integer;
  harga: array[1..MAX] of real;
  total, diskonPersen, besarDiskon, totalBayar: real;
begin
  write('Masukkan jumlah barang (N): ');
  readln(N);

  if (N < 1) or (N > MAX) then
  begin
    writeln('Jumlah barang harus 1 sampai ', MAX);
    halt(0);
  end;

  total := 0;
  for i := 1 to N do
  begin
    write('Harga barang ke-', i, ': Rp ');
    readln(harga[i]);
    total := total + harga[i];
  end;

  if total < 100000 then
    diskonPersen := 0
  else if total < 500000 then
    diskonPersen := 0.10
  else
    diskonPersen := 0.20;

  besarDiskon := total * diskonPersen;
  totalBayar := total - besarDiskon;

  writeln;
  writeln('=== RINCIAN BELANJA ===');
  for i := 1 to N do
    writeln('Barang ke-', i, ': Rp ', harga[i]:0:2);

  writeln('Total Sebelum Diskon: Rp ', total:0:2);
  writeln('Diskon (', (diskonPersen * 100):0:0, '%): Rp ', besarDiskon:0:2);
  writeln('Total Bayar Akhir: Rp ', totalBayar:0:2);
end.