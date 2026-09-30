program cek;
uses crt;

var
    angka: integer;

begin
    clrscr;
    write('Masukkan angka: ');
    readln(angka);
    
while angka > 0 do
    begin
    writeln( angka, ' adalah bilangan positif');
    write('Masukkan angka lagi(o untuk berhenti): ');
    readln(angka);
    end;
    writeln('program selesai');
end.