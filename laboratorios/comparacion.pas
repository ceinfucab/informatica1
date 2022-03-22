program comparacion;
uses crt;
 (*Hacer un programa que, dado tres números enteros distintos determine cual es el menor, el
intermedio y el mayor ( cuando se dice “determine”, indica que el resultado debe mostrarse )
Ejemplo : si se ingresa 70 , 25 y 33 el programa debe mostrar Menor es 25, Intermedio es 33 y
Mayor es 70.*)

var a,b,c,menor,inter,mayor:integer;

begin

 //INICIALIZAR:
 a:=0;
 b:=0;
 c:=0;
 menor:=0;
 inter:=0;
 mayor:=0;

  writeln('Ingrese tres numeros enteros');
  readln(a,b,c);

  //primer numero ingresado
  if (a<b) and (a<c)then
      menor:=a;
  if (a>b) and (a<c) or (a<b)and(a>c)then
      inter:=a;
  if (a>b)and(a>c) then
     mayor:=a;

 //segundo numero ingresado
  if (b<a) and (b<c)then
      menor:=b;
  if (b>a) and (b<c) or (b<a)and(b>c)then
      inter:=b;
  if (b>a)and(b>c) then
     mayor:=b;

// tercer numero ingresado
  if (c<b) and (c<a)then
      menor:=c;
  if (c>b) and (c<a) or (c<b)and(c>a)then
      inter:=c;
  if (c>a)and(c>a) then
     mayor:=c;

 writeln('Menor es: ',menor,' Intermedio es: ',inter,'y Mayor es: ',mayor);

 readkey;
end.

