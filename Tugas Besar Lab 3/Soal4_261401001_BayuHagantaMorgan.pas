```pascal
program Soal4;

var
  pilihan: integer;
  a, b, hasil: real;
  ia, ib: integer;
  lagi: char;

begin
  repeat
    writeln('=== KALKULATOR SEDERHANA ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    if (pilihan >= 1) and (pilihan <= 5) then
    begin
      write('Masukkan angka pertama: ');
      readln(a);

      write('Masukkan angka kedua: ');
      readln(b);

      case pilihan of

        1:
        begin
          hasil := a + b;
          writeln('Hasil: ', hasil:0:2);
        end;

        2:
        begin
          hasil := a - b;
          writeln('Hasil: ', hasil:0:2);
        end;

        3:
        begin
          hasil := a * b;
          writeln('Hasil: ', hasil:0:2);
        end;

        4:
        begin
          if b <> 0 then
          begin
            hasil := a / b;
            writeln('Hasil: ', hasil:0:2);
          end
          else
            writeln('Error: Pembagian dengan nol.');
        end;

        5:
        begin
          ia := round(a);
          ib := round(b);

          if ib <> 0 then
          begin
            writeln('DIV = ', ia div ib);
            writeln('MOD = ', ia mod ib);
          end
          else
            writeln('Error: Pembagian dengan nol.');
        end;

      end;
    end
    else
      writeln('Pilihan operasi tidak valid.');

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(lagi);
    writeln;

  until (lagi = 'T') or (lagi = 't');

  writeln('Program selesai.');
end.
```
