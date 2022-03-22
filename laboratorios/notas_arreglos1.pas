(*Escriba un programa que lea la cédula, nombre y las calificaciones de los tres
parciales de los alumnos de Algoritmos y Programación I de la UCAB, las
almacene en un arreglo y luego muestre en pantalla los nombres ordenados
de forma descendente por promedio. Para ello tome una muestra solo de 10
alumnos.*)

program project1;
uses crt;

type
vector = array[1..10] of integer;
vector2 = array[1..10] of string;
vector3 = array[1..10] of real;

var notas,cedulas:vector;
     nombres:vector2;
     promedios:vector3;

     Cal_Prom,aux:real;

    i,j,k,brecha,cambio:integer;

begin

   //inicializar
   for j:=1 to 3 do
      nombres[j]:=' ';

    for i:=1 to 3 do
    begin
      cedulas[i]:=0;
      promedios[i]:=0;
      notas[i]:=0;
    end;

    Cal_Prom:=0;
    k:=0;

  writeln('Bienvenido Alumno Ucabista de Algoritmos y Programacion I');

 for i:=1 to 3 do
 begin

  writeln('Ingrese su Cedula');
  readln(cedulas[i]);

  writeln('Ingrese su Nombre');
  readln(nombres[i]);
  writeln(nombres[i]);

   Cal_Prom:=0; // reiniciar promedio
   for j:=1 to 3 do
   begin
    writeln('Ingrese su calificacion del Parcial: ',j);
    readln(notas[j]);
    Cal_Prom:=(Cal_Prom+notas[j]); // sumar todas las notas
   end;
   writeln('Suma de notas:',Cal_Prom:2:2);
   Cal_Prom:=(Cal_Prom/3);  // calcular promedio
   writeln('con promedio: ',Cal_Prom:2:2);

   k:=k+1;
   promedios[k]:=(Cal_Prom); // guardar promedios para cada estudiante

 end;

  for i:=1 to 3 do
  writeln(nombres[i]);
 // Ordenamiento de notas de forma descendente y nombres

 brecha:=3; (* longitud del arreglo *)
	cambio:=0;

	Repeat
		(* actualizacion de la brecha para el rastreo *)
		if brecha>1 Then
		Begin
		     brecha:=Trunc(brecha/1.3);   {iniciamos la brecha dividiendo entre el factor de encogimiento, redondeamos hacia abajo}
			if (brecha=9) or (brecha=10) Then  {si la brecha llegara a ser 9 o 10 se pueden hacer mejoras en la}
			brecha:=11;                      		{velocidad si se establace como 11, de aqui el nombre de combsort11}
		 End;

		i:=1;
		cambio:=0;

		while (i+brecha <= 3) Do
		Begin
			if (promedios[i] > promedios[i+brecha]) Then	// comparo
			Begin
			     aux:=promedios[i+brecha];   // guardo en una auxiliar
                             promedios[i+brecha]:=promedios[i];	// cambio al menor
			     promedios[i]:=aux;               // cambio al mayor
			     cambio:=cambio+1;                           // sumo 1
			End;

				i:=i+1;		// subimos el indice
		End;

	Until (brecha=1) and (cambio=0);

        clrscr;
        writeln('Nombres ordenados de forma descendente por promedio: ');

	for i:=3 downto 1 Do // de forma descendente
        begin
          writeln(nombres[i]);
          Writeln(promedios[i]:2:2);
        end;
        readkey;



end.

