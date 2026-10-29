program LulusArraySimple;
uses crt;

var
  tugas, kuis, uts, uas : array[1..5] of integer;
  rata : array[1..5] of real;
  n, i : integer;
begin
clrscr;
  write('Jumlah mahasiswa (1-5): ');
  readln(n);

  for i := 1 to n do
  begin
    writeln('Mahasiswa ke-', i);
    write('Tugas: '); 
    readln(tugas[i]);
    write('Kuis : '); 
    readln(kuis[i]);
    write('UTS  : '); 
    readln(uts[i]);
    write('UAS  : ');
     readln(uas[i]);
    rata[i] := (tugas[i] + kuis[i] + uts[i] + uas[i]) / 4;
  end;

  writeln;
  writeln('--- HASIL ---');
  for i := 1 to n do
  begin
    write('Mhs ', i, ' Rata=', rata[i]:0:2);
    if rata[i] >= 70 then
      writeln(' LULUS')
    else
      writeln(' TIDAK LULUS');
  end;

  readln;
end.