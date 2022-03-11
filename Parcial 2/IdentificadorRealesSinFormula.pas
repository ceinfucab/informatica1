{.- Una de las formas que tienen los números reales  en Pascal está representado en el siguiente formato : m.n , +m.n, -m.n, donde “m” y “n” son enteros no negativos. Utilizando subprogramas, elabore un algoritmo que acepte una cadena de caracteres y a continuación verifique si representa una constante real válida en Pascal, según el criterio indicado.
Ejemplos : 2.5   +13.75   -4.25 son constantes reales válidas en Pascal, mientras que -3.   -.75  4. NO son constantes reales válidas en Pascal.}

program IdentificadorRealesSinFormula;
uses crt;
var
  cadena:String;
  palabra:string;
  i,posi,longitud:integer;
  identificador:boolean;
  sub:string;

begin
  writeln('Ingrese una cadena de numeros reales');
  readln(cadena);
  longitud:=length(cadena);
  identificador:=true;   {Variable control}
  sub:='.';   {formato de los numeros reales}
  for i:=1 to length(cadena) do
  begin
   if (ord(cadena[1])<>46) and (ord(cadena[1])<>44) and (ord(cadena[1])<>47)   then   {Si en la primera posicion de la cadena es distinta de . y , entro}
    begin
     if (ord(cadena[i])>=43) and (ord(cadena[i])<=57)  and (ord(cadena[i])<>47) and (ord(cadena[i])<>44)  then  {Aqui entraran los numeros del 0 al 9, que no se permita el caracter y la , /}
      begin
       palabra:=palabra+cadena[i]; {Guardo los caracteres permitidos en otra cadena}
       end;
    end;
  end;
    posi:=pos(sub,cadena); {Validacion para que que el valor que ingresen luego del . sea un numero entero}
    for i:=posi+1 to length(cadena) do
     begin
       if (cadena[i]='.') or (cadena[i]='-')or (cadena[i]=',') or (cadena[i]='+')then
        begin
          identificador:=false;  {Si no es un numero entero la variable control cambia a falso}
         end;
    end;
      if (palabra=cadena) and (identificador=true) then  {Si palabra=cadena entonces seria verdad pq todo es permitido y el identificador pero si es falso entonces tirara un mensaje de error}
      begin
       writeln(palabra,' Son numeros reales en pascal');
      end
      else
       begin
         writeln(cadena,' No son numeros reales en pascal');
       end;

  readkey;
end.

