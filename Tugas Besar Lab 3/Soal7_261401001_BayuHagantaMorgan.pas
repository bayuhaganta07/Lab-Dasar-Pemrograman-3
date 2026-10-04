{$mode objfpc}{$H+}
program Soal7;
var
  kode: char;
  lama: integer;
  tarif: longint;
begin
  write('Masukkan kode kendaraan (M/K/B): ');
  readln(kode);
  write('Masukkan lama parkir (jam): ');
  readln(lama);

  if lama <= 0 then
  begin
    writeln('Lama parkir harus lebih dari 0.');
    halt(0);
  end;

  case upcase(kode) of
    'M': begin
           if lama > 10 then
             tarif := 30000
           else
             tarif := 5000 + (lama - 1) * 3000;
         end;
    'K': begin
           if lama > 10 then
             tarif := 10000
           else
             tarif := 2000 + (lama - 1) * 1000;
         end;
    'B': begin
           if lama > 10 then
             tarif := 50000
           else
             tarif := 10000 + (lama - 1) * 5000;
         end;
    else
      begin
        writeln('Kode kendaraan tidak valid.');
        halt(0);
      end;
  end;

  writeln('Kode Kendaraan: ', upcase(kode));
  writeln('Lama Parkir: ', lama, ' jam');
  writeln('Total Tarif Parkir: Rp ', tarif);
end.