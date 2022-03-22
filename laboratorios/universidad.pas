program universidad;
 uses crt;

(*Cierta Universidad tiene un programa para estimular a los estudiantes con buen rendimiento
académico. Si el promedio es de 15.5 o más y el alumno es de pregrado entonces cursará 28
créditos y se le hará un 20% de descuento.

Si el promedio es mayor o igual a 14.0 pero menor que
15.5 y el alumno es de pregrado,
entonces cursará 25 créditos y se le hará un 10% de descuento.

Si el promedio es mayor o igual a 12.5 y menor que 14.0 y es de pregrado, cursará 20 créditos y
no tendrá ningún descuento.

Si el promedio es mayor o igual a 10.0 y menor que 12.5 y es de
pregrado, cursará 15 créditos y no tendrá descuento.

Si el promedio es menor de 10.0 y es de
pregrado, no podrá matricularse.

Si el promedio es mayor o igual a 4.5 y es de postgrado, cursará
20 créditos y se le hará un 20% de descuento.

Si el promedio es menor de 4.5 y es de postgrado
cursará 10 créditos y no tendrá descuento.

Hacer un algoritmo que determiné cuánto debe pagar
un estudiante y cuántos créditos registra si el valor de cada crédito es de Bs. 150.000 para
pregrado y Bs. 300.000 para postgrado.*)

const credito_post=300000;
  credito_pre=150000;

 var promedio,total,descuento:real;
   creditos,cursando:integer;



begin

  //INICIALIZAR:
  descuento:=0;
  cursando:=0;
  promedio:=0;
  creditos:=0;
  total:=0;


  Writeln('Bienvenido Alumno');
  Writeln('Escribir si es de Pregrado o Postgrado, 1 Pregado, 2 Postgrado');
  readln(cursando);

  writeln('De cuanto es su promedio?');
  readln(promedio);

  if (cursando=1)then //pregrado
  begin
   if (promedio>=15.5) then
   begin
       writeln('Usted cursara 28 creditos y tendra un descuento de 20%');
       creditos:=28;
       descuento:=20;
   end;
      if (promedio>=14) and (promedio<15.5) then
      begin
           writeln('Usted cursara 25 creditos y 10% de descuento');
           creditos:=25;
       descuento:=10;
      end;
        if (promedio>=12.5) and (promedio<14) then
        begin
             writeln('Usted cursara 20 creditos y no tendra descuento');
             creditos:=20;
        end;
            if (promedio>=10) and (promedio<12.5) then
               begin
               writeln('Usted cursara 15 creditos');
               creditos:=15;
               end;
                  if promedio<10 then
                     begin
                     writeln('Usted no podra matricularse');
                     readkey;

                     end;
  end;


  if cursando=2 then //postgrado
     begin
          if promedio>=4.5 then
             begin
             writeln('Usted cursara 20 creditos y tendra un 20% de descuento');
             creditos:=20;
             descuento:=20;
             end
          else
          begin
            writeln('Cursara 10 creditos y no tendra descuento');
            creditos:=10;
          end;
     end;

if cursando=1 then//pregrado
   begin
     total:=(creditos*credito_pre);
     descuento:=descuento/100;  //convertir en pocerntaje
     descuento:=descuento*total; // obtener descuento

     total:=(total-descuento);
     writeln('Usted es de pregrado y debe pagar: ',total:2:0);
   end;

if cursando=2 then//postgrado
   begin
     total:=(creditos*credito_post);
     descuento:=descuento/100;  //convertir en pocerntaje
     descuento:=descuento*total; // obtener descuento

     total:=(total-descuento);
     writeln('Usted es de postgrado y debe pagar: ',total:2:0);
   end;
  readkey;
end.

