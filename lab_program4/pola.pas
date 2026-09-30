program pola;
uses crt;

var
    i, j, n: integer;

begin
    clrscr;
 writeln('Masukkan jumlah baris: ');
    readln(n);

    for i := 1 to n do
    begin
        for j := 1 to i do
        begin
            write('*');
        end;
        writeln;
    end;

end.