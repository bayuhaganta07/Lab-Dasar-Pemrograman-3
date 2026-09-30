program perkaliansatu;
uses crt;

var
  i, hasil: integer;

begin
  clrscr;
  for i := 1 to 100 do
  begin
    hasil := 1 * i;
    
    if (hasil mod 3 = 0) and (hasil mod 5 = 0) then
      continue;
      
    writeln('1 x ', i, ' = ', hasil);
  end;
  readln;
end.