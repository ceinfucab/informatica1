{Una de las formas que tienen los numeros reales en pascal esta representado en formato exponencial xEe, xE+e, xE-e,
donde x es un numero entero o real y e es un entero no negativo}

program IdentificadorReales;
uses crt;
var
  cadena:String;
  palabra:string;
  i,posi:integer;
  longitud:integer;
  identificador:boolean;
  sub:string;

begin
  writeln('Ingrese una cadena con el formato xEe, xE+e, xE-e');
  readln(cadena);
  longitud:=length(cadena);
  identificador:=true;   {Variable control}
  sub:='E';   {Formato exponencial de los numeros reales}
  for i:=1 to length(cadena) do
  begin
   if (ord(cadena[1])<>69) and (ord(cadena[1])<>46) and (ord(cadena[i])<>44) then   {Si en la primera posicion de la cadena es distinta de E . , entro}
    begin
     if (ord(cadena[i])>=43) and (ord(cadena[i])<=57) or (ord(cadena[i])=69) and (ord(cadena[i])<>47) and (ord(cadena[i])<>44) then  {Aqui entraran los numeros del 0 al 9, la E en una posicion que no sea 1 y que no se permita el caracter /}
      begin
       palabra:=palabra+cadena[i]; {Guardo los caracteres permitidos en otra cadena}
       end;
    end;
  end;
    posi:=pos(sub,cadena);  {Validacion para que que el valor que ingresen en e sea un numero entero}
    for i:=posi to length(cadena) do
     begin
       if cadena[i]='.'then
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

