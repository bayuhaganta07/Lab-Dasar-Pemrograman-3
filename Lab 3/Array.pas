program Perulangan_Array;
uses crt;

var
  kursi: array[1..1000] of integer;
  i, n: integer;

begin
  clrscr;

  write('Masukkan jumlah data: ');
  readln(n);

  { Input data }
  for i := 1 to n do
  begin
    write('Masukkan index ke-', i, ': ');
    readln(kursi[i]);
  end;

  { Akses data ascending (turun ke naik) }
  for i := 1 to n do
  begin
    write(kursi[i], ' ');
  end;
  writeln;

  { Akses data descending (naik ke turun) }
  for i := n downto 1 do
  begin
    write(kursi[i], ' ');
  end;

  writeln;
  readln;
end.