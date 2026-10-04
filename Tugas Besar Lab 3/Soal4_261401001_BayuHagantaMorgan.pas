program Soal4;

var
  pilihan: integer;
  a, b, hasil: real;
  ia, ib: integer;
  lagi: char;

begin
  lagi := 'Y';

  while (lagi = 'Y') or (lagi = 'y') do
  begin
    writeln('=== KALKULATOR SEDERHANA ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    if pilihan = 1 then
    begin
      write('Masukkan angka pertama: ');
      readln(a);
      write('Masukkan angka kedua: ');
      readln(b);

      hasil := a + b;
      writeln('Hasil: ', hasil:0:2);
    end

    else if pilihan = 2 then
    begin
      write('Masukkan angka pertama: ');
      readln(a);
      write('Masukkan angka kedua: ');
      readln(b);

      hasil := a - b;
      writeln('Hasil: ', hasil:0:2);
    end

    else if pilihan = 3 then
    begin
      write('Masukkan angka pertama: ');
      readln(a);
      write('Masukkan angka kedua: ');
      readln(b);

      hasil := a * b;
      writeln('Hasil: ', hasil:0:2);
    end

    else if pilihan = 4 then
    begin
      write('Masukkan angka pertama: ');
      readln(a);
      write('Masukkan angka kedua: ');
      readln(b);

      if b <> 0 then
      begin
        hasil := a / b;
        writeln('Hasil: ', hasil:0:2);
      end
      else
      begin
        writeln('Error: Pembagian dengan nol.');
      end;
    end

    else if pilihan = 5 then
    begin
      write('Masukkan bilangan bulat pertama: ');
      readln(ia);
      write('Masukkan bilangan bulat kedua: ');
      readln(ib);

      if ib <> 0 then
      begin
        writeln('DIV = ', ia div ib);
        writeln('MOD = ', ia mod ib);
      end
      else
      begin
        writeln('Error: Pembagian dengan nol.');
      end;
    end

    else
    begin
      writeln('Pilihan operasi tidak valid.');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(lagi);
    writeln;
  end;

  writeln('Program selesai.');
end.