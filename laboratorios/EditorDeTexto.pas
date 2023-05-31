program EditorTexto;

{
1. Diseñar un editor de texto que pueda ejecutar sobre un texto (cadena de
caracteres) leído las siguientes operaciones :
• Borrar todas las veces que aparece una subcadena dada por teclado.
Mostrar como quedó la nueva subcadena.
• Mostrar, todas las posiciones, donde aparece una cadena especificada por
teclado
• Insertar una subcadena en una posición especificada
• Sustituir una cadena por otra cadena dada.
• Convertir la cadena dada a mayúsculas o minúsculas
2. Escribir un programa que lea una de cadena de caracteres conformada por varias
palabras e imprima :
• Muestre, separando por coma, las palabras que contenga un carácter
dado por teclado
• En otra cadena, concatene las palabras de cuatro letras y muestre cuantas
palabras son.
• Sustituya cada palabra de cuatro letras por una cadena de cuatro
asteriscos e imprima la nueva cadena.
• Determine las cantidad de veces que aparece una subcadena también dada
por teclado.
}

uses crt;

var
  cadena, subcadena, nuevaCadena: string;
  posicion,i,contador:integer;
  cadenaOriginal, buscar, reemplazar: string;
  opc: char;
  caracter: Char;
  palabrasConCaracter: string;
  palabra: string;
  palabrasConcatenadas:string;
  posSubcadena: Integer;
  posInicio: Integer;
begin

  writeln('Editor De Texto');
  writeln('Seleccione una opcion');
  writeln('[1] Borrar una subcadena en una cadena');
  writeln('[2]  Mostrar todas las posiciones, donde aparece una cadena');
  writeln('[3] insertar en una posicion especificada');
  writeln('[4] Sustituir una cadena por otra cadena dada');
  writeln('[5] Convertir la cadena dada a mayusculas o minusculas');
  writeln('[6] Encontrar palabras por una caracter');
  writeln('[7] Buscar palabras de cuatro letras');
  writeln('[8] Determinar cuantas veces aparece una subcadena');
  readln(opc);

  case opc of
  '1':
    begin
    nuevaCadena:=''; // inicializar nuevacadena vacia
    write('Ingresa la cadena de texto: ');
    ReadLn(cadena);

    write('Ingresa la subcadena a eliminar: ');
    readln(subcadena);

    posicion := Pos(subcadena, cadena);
    while posicion > 0 do
    begin
      Delete(cadena, posicion, Length(subcadena));
      posicion := Pos(subcadena, cadena);
    end;
    nuevaCadena := cadena;

    writeln('La cadena modificada es: ', nuevaCadena);
    readkey;
  end;
  '2': begin
     Write('Ingresa la cadena de texto: ');
     readln(cadena);

      Write('Ingresa la subcadena a buscar: ');
      readln(subcadena);

      posicion := Pos(subcadena, cadena);
      while posicion > 0 do
      begin
        WriteLn('La subcadena "', subcadena, '" aparece en la posicion ', posicion);
        posicion := Pos(subcadena, cadena, posicion + Length(subcadena));
      end;
     readkey;
  end;
  '3': begin
      Write('Ingresa la cadena de texto: ');
      readln(cadena);

      Write('Ingresa la subcadena a insertar: ');
      readln(subcadena);

      Write('Ingresa la posicion de insercion: ');
      readln(posicion);

      cadena := Copy(cadena, 1, posicion - 1) + subcadena + Copy(cadena, posicion);

     WriteLn('La cadena modificada es: ', cadena);
     readkey;
     end;
  '4': begin
      writeln('Ingrese la cadena original:');
  readln(cadena);

  writeln('Ingrese la cadena a buscar:');
  readln(buscar);

  writeln('Ingrese la cadena de reemplazo:');
  readln(reemplazar);

  posicion := Pos(buscar, cadena);
  while posicion > 0 do
  begin
    Delete(cadena, posicion, Length(buscar));
    Insert(reemplazar, cadena, posicion);
    posicion := Pos(buscar, cadena);
  end;

  writeln('Cadena original: ', cadenaOriginal);
  readkey;
  end;
  '5':
    begin
    write('Ingresa una cadena de texto: ');
  readln(cadena);

  WriteLn('Selecciona una opcion:');
  WriteLn('1. Convertir a mayusculas');
  WriteLn('2. Convertir a minusculas');
  Write('Opcion: ');
  readln(opc);

  if opc = '1' then
  begin
    for i := 1 to Length(cadena) do
    begin
      if (cadena[i] >= 'a') and (cadena[i] <= 'z') then
        cadena[i] := Chr(Ord(cadena[i]) - 32);
    end;
  end
  else if opc = '2' then
  begin
    for i := 1 to Length(cadena) do
    begin
      if (cadena[i] >= 'A') and (cadena[i] <= 'Z') then
        cadena[i] := Chr(Ord(cadena[i]) + 32);
    end;
  end
  else
  begin
    writeln('Opcion invalida');
    Exit;
  end;

  writeLn('La cadena convertida es: ', cadena);
  readkey;
    end;

  '6':
  begin
  write('Ingresa una cadena de texto: ');
  ReadLn(cadena);

  Write('Ingresa un caracter: ');
  ReadLn(caracter);

  palabrasConCaracter := '';
  palabra := '';

  for i := 1 to Length(cadena) do
  begin
    if cadena[i] = ' ' then
    begin
      if Pos(caracter, palabra) > 0 then
      begin
        if palabrasConCaracter <> '' then
          palabrasConCaracter := palabrasConCaracter + ', ';
        palabrasConCaracter := palabrasConCaracter + palabra;
      end;
      palabra := '';
    end
    else
      palabra := palabra + cadena[i];
  end;

  // Verificar la última palabra después del último espacio
  if Pos(caracter, palabra) > 0 then
  begin
    if palabrasConCaracter <> '' then
      palabrasConCaracter := palabrasConCaracter + ', ';
    palabrasConCaracter := palabrasConCaracter + palabra;
  end;

  writeln('Palabras que contienen el caracter "', caracter, '":');
  writeln(palabrasConCaracter);
  readkey;
  end;

  '7':
  begin
  Write('Ingresa una cadena de texto: ');
  ReadLn(cadena);

  palabrasConcatenadas:='';
  palabra := '';
  contador := 0;
  nuevaCadena:='';
  cadena := cadena + ' '; // agregar un espacio al final

  for i := 1 to Length(cadena) do
  begin
    if cadena[i]=' ' then
    begin
      if Length(palabra) = 4 then
      begin
        palabrasConcatenadas := palabrasConcatenadas + palabra;
        Inc(contador);
      end;
      palabra := '';
    end
    else
      palabra := palabra + cadena[i];
  end;

  // Verificar la última palabra después del último espacio
  if Length(palabra) = 4 then
  begin
    palabrasConcatenadas := palabrasConcatenadas + palabra;
    Inc(contador);
  end;

  writeLn('Palabras concatenadas de cuatro letras: ', palabrasConcatenadas);
  writeLn('Cantidad de palabras encontradas: ', contador);



  for i := 1 to Length(cadena) do
  begin
    if cadena[i] = ' ' then
    begin
      if Length(palabra) = 4 then
        nuevaCadena := nuevaCadena + '**** '
      else
        nuevaCadena := nuevaCadena + palabra + ' ';

      palabra := '';
    end
    else
      palabra := palabra + cadena[i];
  end;

  // Verificar la última palabra después del último espacio
  if Length(palabra) = 4 then
    nuevaCadena := nuevaCadena + '****'
  else
    nuevaCadena := nuevaCadena + palabra;

  writeln('Nueva cadena con palabras sustituidas: ', nuevaCadena);

  readkey;
  end;
  '8':
  begin
      write('Ingresa una cadena de texto: ');
  readln(cadena);

  write('Ingresa una subcadena: ');
  ReadLn(subcadena);

  contador := 0;
  posSubcadena := 0;
  posInicio := 1;

  repeat
    posSubcadena := Pos(subcadena, cadena, posInicio);

    if posSubcadena > 0 then
    begin
      Inc(contador);
      posInicio := posSubcadena + Length(subcadena);
    end;
  until posSubcadena = 0;

  writeln('Cantidad de veces que aparece la subcadena: ', contador);
  readkey;
  end;




  end;

end.

