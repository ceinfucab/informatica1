program mayormenorintermedio;
uses crt;
var
  num1,num2,num3:integer;

begin
  num1:=0;
  num2:=0;
  num3:=0;
  write('Ingrese los numeros a comparar para saber cual es el mayor , el menor y el intermedio: ');
  readln(num1,num2,num3);
  if (num1>num2) and (num2>num3) then
    writeln('el mayor de los 3 es: ',num1,' , el intermedio: ',num2,' , el menor: ',num3)
  else if (num1>num3) and (num3>num2) then
    writeln('el mayor de los 3 es: ',num1,' , el intermedio: ',num3,' , el menor: ',num2)
  else if (num2>num1) and (num1>num3) then
    writeln('el mayor de los 3 es: ',num2,' , el intermedio: ',num1,' , el menor: ',num3)
  else if (num2>num3) and (num3>num1) then
    writeln('el mayor de los 3 es: ',num2,' , el intermedio: ',num3,' , el menor: ',num1)
  else if (num3>num1) and (num1>num2) then
    writeln('el mayor de los 3 es: ',num3,' , el intermedio: ',num1,' , el menor: ',num2)
  else if (num3>num2) and (num2>num1) then
    writeln('el mayor de los 3 es: ',num3,' , el intermedio: ',num2,' , el menor: ',num1);

  readkey;
end.

