program automorficoY;
uses crt;
var  decimales,contador,divisor,operacion1,operacion2,operacion3,comprobacion,i,num1,num2,cuadrado,cubo,cuatro:integer;
     salir,decision:boolean;
     decision2:char;


begin
  decision:=true;

  while decision=true do
  begin
      num1:=0;
      num2:=0;
      operacion1:=0;
      operacion2:=0;
      operacion3:=0;
      divisor:=0;
      cubo:=0;
      cuadrado:=0;
      cuatro:=0;
      comprobacion:=0;
      decimales:=0;
      decision2:=' ';
      contador:=1;

      writeln('Escribe un numero para saber si es automorfico');
      readln(num1);
      num2:=num1;
      cuadrado:=num1*num1;
      cubo:=num1*num1*num1;
      cuatro:= num1*num1*num1*num1;
      Writeln(num1);
      salir:=true;

      while salir=true do
      begin
           decimales:=(num1 div 10);    // elimino numeros hasta que me queden los 2 ultimos //
           num1:=decimales;
           if decimales=0 then
              salir:=false
               else
               contador:=contador+1;      //voy contando digitos
       end;

      divisor:=10;

     if contador>1 then
        begin
             for i:=2 to contador do
                  divisor:=divisor*10;

        end
     else
      divisor:=10;

      operacion1:=(cuadrado mod divisor);
       if operacion1=num2 then
         comprobacion:=comprobacion+1;

        operacion2:=(cubo mod divisor);
       if operacion2=num2 then
         comprobacion:=comprobacion+1;

       operacion3:=(cuatro mod divisor);
       if operacion3=num2 then
         comprobacion:=comprobacion+1;

       if comprobacion=3 then                // si se cumplen exitosamente los tres casos entonces, es un numero automorfico
         writeln('Es un numero automorfico')
         else
          writeln('No es un numero automorfico');

        writeln;

        writeln('Deseas verificar otro numero?');
        writeln('SI (S) No (N)');
        readln(decision2);

        if (decision2='N') or (decision2='n') then
         decision:=false
         else
         clrscr;

  end;
end.
