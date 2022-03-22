program estudiantes;
uses crt;
const
  creditopre=150000;         //Los valores de los creditos para pregrado y postgrado
  creditopost=300000;
var
  nombre,apellido,grado:string;
  promedio,pago,descuento:real;
  decision:boolean;


begin
  nombre:=' ';
  apellido:=' ';                        // inicializo las variables//
  grado:=' ';
  promedio:=0;
  pago:=0;
  decision:=false;
  writeln('Bienvenido al sistema de pago de la universidad');
  write('Ingrese su nombre: ');
  readln(nombre);
  write('Ingrese su apellido: ');
  readln(apellido);
  write('Ingrese si pertenece a pregrado o postgrado: ');
  readln(grado);
  if grado='pregrado' then
    decision:=true                          // utilizo decision para saber si es pregrado o postgrado//
  else
    decision:=false;

  write('Ingrese su promedio: ');
  readln(promedio);
  if (promedio>15.5) and (decision=true) then             // pago y descuentos que podria tener por su promedio y por ser de pregrado//
    begin
    clrscr;
    pago:=28*creditopre;
    descuento:=pago*0.20;
    pago:=pago-descuento;
    writeln('El estudiante ',nombre,' ',apellido,' Perteneciente a Pregrado con promedio de ',promedio:2:2,' tendra que pagar la cantidad de ',pago:2:0,' Bs');
    end
  else if (promedio>=14.0) and (promedio<15.0) and (decision=true) then
    begin
    clrscr;
    pago:=25*creditopre;
    descuento:=pago*0.10;
    pago:=pago-descuento;
    writeln('El estudiante ',nombre,' ',apellido,' Perteneciente a Pregrado con promedio de ',promedio:2:2,' tendra que pagar la cantidad de ',pago:2:0,' Bs');
    end
  else if (promedio>=12.5) and (promedio<14.0) and (decision=true) then
    begin
    clrscr;
    pago:=20*creditopre;
    writeln('El estudiante ',nombre,' ',apellido,' Perteneciente a Pregrado con promedio de ',promedio:2:2,' tendra que pagar la cantidad de ',pago:2:0,' Bs');
    end
  else if (promedio>=10.0) and (promedio<12.5) and (decision=true) then
    begin
    clrscr;
    pago:=15*creditopre;
    writeln('El estudiante ',nombre,' ',apellido,' Perteneciente a Pregrado con promedio de ',promedio:2:2,' tendra que pagar la cantidad de ',pago:2:0,' Bs');
    end
  else if (promedio<10.0) and (decision=true) then
    begin
    clrscr;
    writeln('Disculpe ',nombre,' ',apellido,' pero no podra matricularse para esta universidad');
    end
  else if (promedio>=4.5) and (decision=false) then // pago y descuentos que podria tener por su promedio y por ser de postgrado//
    begin
    clrscr;
    pago:=20*creditopost;
    descuento:=pago*0.20;
    pago:=pago-descuento;
    writeln('El estudiante ',nombre,' ',apellido,' Perteneciente a Postgrado con promedio de ',promedio:2:2,' tendra que pagar la cantidad de ',pago:2:0,' Bs');
    end
  else if (promedio<4.5) and (decision=false) then
    begin
    clrscr;
    pago:=10*creditopost;
    writeln('El estudiante ',nombre,' ',apellido,' Perteneciente a Postgrado con promedio de ',promedio:2:2,' tendra que pagar la cantidad de ',pago:2:0,' Bs');
    end;
  readkey;
end.

