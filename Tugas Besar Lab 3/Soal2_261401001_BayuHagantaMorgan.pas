{$mode objfpc}{$H+}
program Soal2;
const
  PASSWORD = 'pascal123';
  MAX_PERCOBAAN = 3;
var
  input: string;
  percobaan: integer;
begin
  percobaan := 0;
  writeln('=== VERIFIKASI LOGIN ===');

  repeat
    percobaan := percobaan + 1;
    write('Masukkan kata sandi (', percobaan, '/', MAX_PERCOBAAN, '): ');
    readln(input);

    if input = PASSWORD then
    begin
      writeln('Login Berhasil! Selamat Datang');
      break;
    end
    else
    begin
      if percobaan < MAX_PERCOBAAN then
        writeln('Kata sandi salah. Silakan coba lagi.')
      else
        writeln('Akses Ditolak! Akun Terkunci.');
    end;
  until percobaan >= MAX_PERCOBAAN;
end.