program hit;
uses crt;

var

    n, i, angka, total: integer;

begin
clrscr;
writeln('Masukkan jumlah angka: ');
readln(n);
total := 0;
for i := 1 to n do
begin
    write('Masukkan angka ke-', i, ': ');
    readln(angka);
    total := total + angka;
end;
writeln('Total: ', total);

end.