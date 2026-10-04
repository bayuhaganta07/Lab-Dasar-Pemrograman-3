{$mode objfpc}{$H+}
program Soal9;
var
  tahun, bulan, hari: integer;
  kabisat: boolean;
begin
  write('Masukkan tahun: ');
  readln(tahun);
  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

  kabisat := ((tahun mod 400 = 0) or
              ((tahun mod 4 = 0) and (tahun mod 100 <> 0)));

  case bulan of
    1,3,5,7,8,10,12: hari := 31;
    4,6,9,11: hari := 30;
    2: begin
         if kabisat then
           hari := 29
         else
           hari := 28;
       end;
    else
      begin
        writeln('Nomor bulan tidak valid.');
        halt(0);
      end;
  end;

  writeln('Tahun ', tahun, ' Bulan ', bulan, ' memiliki ', hari, ' hari.');

  if bulan = 2 then
  begin
    if kabisat then
      writeln('Tahun ini adalah tahun kabisat.')
    else
      writeln('Tahun ini bukan tahun kabisat.');
  end;
end.