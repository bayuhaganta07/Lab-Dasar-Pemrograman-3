program UrutNilai;
uses crt;

var
  a : array[1..10] of integer;
  n, i, j, tmp : integer;
begin
clrscr;
  write('Jumlah mahasiswa (1-10): ');
  readln(n);

  for i := 1 to n do
  begin
    write('Nilai ke-', i, ' : ');
    readln(a[i]);
  end;


  for i := 1 to n-1 do
  begin
    for j := i+1 to n do
    begin
      if a[i] > a[j] then
      begin
        tmp := a[i];
        a[i] := a[j];
        a[j] := tmp;
      end;
    end;
  end;

  writeln('Hasil urutan:');
  for i := 1 to n do
    writeln(a[i]);

  readln;
end.