program datosdepersonas;
uses crt;
var
  edad,eleccion,cantidadp,i,j,k:integer;
  peso,estatura,promedad,prompeso,prompeso2,promestatura,estaturad,pesod:real;
  decision:boolean;
begin
  edad:=0;
  peso:=0;
  pesod:=0;
  estatura:=0;
  estaturad:=0;
  promedad:=0;
  prompeso:=0;
  prompeso2:=0;
  promestatura:=0;
  cantidadp:=1;
  i:=0;          //  contadores //
  j:=0;
  k:=0;
  decision:=true;
  writeln('Bienvenido al sistema para calcular los promedios de edad peso y estatura de personas');
  writeln('Desea usted ingresar un dato de una persona: 1 para si , 0 para no ?');
  readln(eleccion);
  if eleccion=1 then
    decision:=true
  else
  if eleccion=0 then
    decision:=false;


  while decision=true do
    begin
      clrscr;
      writeln('ingrese los datos de la persona en el siguiente orden');
      write('edad , peso , decimal del peso(maximo 3 digitos) , estatura , decimal de la estatura(maximo 2 digitos): ');
      readln(edad,peso,pesod,estatura,estaturad);
      writeln('Los datos de la persona que usted ingreso son , edad: ',edad,' anios , peso: ',peso:0:0,',',pesod:0:0,'Kg estatura: ',estatura:0:0,',',estaturad:0:0,' mts');
      pesod:=pesod/1000;
      peso:=peso+pesod;
      estatura:=estatura+(estaturad/100);
      promedad:=promedad+edad;
      prompeso:=prompeso+peso;
      promestatura:=promestatura+estatura;
      if (edad>=18) and (edad<=25) then
        i:=i+1;
      if (edad>=18) and (edad<=35) then
        begin
          k:=k+1;
          prompeso2:=prompeso2+peso;
        end;
      if edad>36 then
        j:=j+1;
      readkey;
      clrscr;
      writeln('Desea usted ingresar otro dato de una persona: 1 para si , 0 para no ?');
      readln(eleccion);
      if eleccion=1 then
        begin
        decision:=true;
        cantidadp:=cantidadp+1;
        end
      else
      if eleccion=0 then
        decision:=false;


    end;
  clrscr;
  promedad:=promedad/cantidadp;
  prompeso:=prompeso/cantidadp;
  promestatura:=promestatura/cantidadp;
  prompeso2:=prompeso2/k;
  writeln('Edad promedio de todas las personas: ',promedad:0:0);
  writeln('peso promedio de todas las personas: ',prompeso:2:3);
  writeln('estatura promedio de todas las personas: ',promestatura:2:2);
  writeln('Cuantas personas hay con edad entre los 18 y 25 anios: ',i);
  writeln('Cuantas personas hay con edad desde 36 anios en adelante: ',j);
  writeln('Cual es el promedio de peso de las personas con edades entre 18 y 35 anios: ',prompeso2:2:3);
readkey;
end.
