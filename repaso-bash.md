# Plan de recuperación de Shell Script
A continuación se muestra una serie de ejercicios para realizar en **Bash**.

## Scripts
### :keyboard: Reto 1
Haz un script que reciba dos números como parámetros y te diga cuál es el mayor de ellos. Debes comprobar que el número de parámetros introducidos sea 2, en caso contrario el script dará un error explicativo.
### :keyboard: Reto 2
Haz un script que pida al usuario una contraseña con confirmación. Si no coinciden las dos contraseñas introducidas debe dar un error y volver a solicitar las contraseñas.
### :keyboard: Reto 3
Haz un script que calcule la media aritmética de una serie de números. 

El programa admitirá un sólo parámetro desde la línea de comandos y éste determinará cuántos números pedirá el programa. Tras introducir todos los números, el programa calculará la media y la mostrará por pantalla.
### :keyboard: Reto 4
Realiza un script que solicite una contraseña y la verifique con una almacenada previamente en el script (p.e. 1234).

Si las contraseñas son iguales dará un mensaje "Verificación OK", en caso contrario dará un mensaje "Error de verificación" y la volverá a pedir hasta que coincida. El número máximo de intentos será 3 y el script debe mostrar el número de intentos disponibles en pantalla.
### :keyboard: Reto 5
Haz un script que muestre los usuarios o grupos personalizados del sistema. 

El script debe exigir un parámetro, que deberá ser `-g` o `-u`. Cualquier otro parámetro devolverá un error y no continuará la ejecución del script.

Si se ejecuta el script con la opción `-u`, debe mostrar por pantalla aquellos usuarios (del fichero `/etc/passwd`) que tengan un UID>=1000. Nota: el UID es el campo nº 3 del fichero.

Si se ejecuta el script con la opción `-g`, debe mostrar por pantalla aquellos grupos (del fichero `/etc/group`) que tengan un GID>=1000. Nota: el GID es el campo nº 3 del fichero.
### :keyboard: Reto 6
Crea un script que pregunte unos datos al usuario: *nombre*, *apellidos* y *fecha de nacimiento*. El script generará automáticamente un nombre de usuario formado por la primera letra del nombre y el primer apellido completo. A continuación se creará un fichero que se llamará como el nombre del usuario y con extensión *.fic* con el siguiente formato:
```
Nombre:Apellido1:Apellido2:FechaNacimiento:Usuario
```
Si el fichero ya existe se solicitará confirmación antes de sobreescribir su contenido. Si se contesta afirmativamente se sobreescribirá el fichero, en caso contrario se mostrará “Operación cancelada”.
### :keyboard: Reto 7 (Examen 23/24)
En este ejercicio debes crear un script llamado `utils.sh` que permitirá realizar dos operaciones: hacer un fichero de script básico y realizar la copia de los ficheros de script en un directorio de seguridad.
- El script admitirá únicamente 1 o 2 parámetros, en caso contrario dará un error explicativo y finalizará la ejecución del script.
- Si el script se lanza con el parámetro `-s` se exigirá que exista un segundo parámetro. Una vez realizada la comprobación, el script deberá crear un fichero con el nombre indicado en el segundo parámetro y con extensión *.sh*. Este fichero contendrá una primera línea con el texto `#!/bin/bash` y deberá tener permisos de ejecución para cualquier usuario.
```
./utils.sh -s
ERROR: Se requiere un segundo parámetro.

./utils.sh -s holamundo
ÉXITO: Se ha creado el script holamundo.sh.
```
- Si el script se lanza con el parámetro `-b` se dará un aviso de la operación a realizar. Si el usuario responde de forma afirmativa (S o s), se deberá crear un directorio llamado `scripts` en caso de no existir. Una vez creado se copiarán todos los archivos con extensión *.sh* dentro del directorio `scripts`.
- Si el script se lanza con cualquier otro parámetro distinto de los anteriores, se deberá dar un error explicativo y finalizar la ejecución.

### :keyboard: Reto 8 (Examen 23/24)
En este ejercicio debes crear un script llamado `gastos.sh` que permitirá llevar un control básico de gastos utilizando un fichero de datos llamado `gastos.db` que tendrá el siguiente formato delimitado por caracteres:
```
num|tipo|fecha|importe|descripción
```
- Si el fichero `gastos.db` no existe, dará un aviso por pantalla pero continuará la ejecución del script creando el fichero completamente vacío.
- Se mostrará repetitivamente el siguiente menú mientras no se elija la opción de salir:
```
Control de gastos
=================
(N)uevo ingreso/gasto
(L)ista de movimientos
(S)aldo
(T)op de gastos
(X) Salir

Opción:
```
- Si se elige la opción N se solicitarán al usuario los datos necesarios para introducir un nuevo gasto/ingreso en el fichero de datos:
  - *id*: número identificador del movimiento
  - *tipo*: ingreso o gasto
  - *fecha*
  - *importe*
  - *descripción*
  - Se debe conservar el formato del fichero indicado arriba, utilizando los delimitadores.

- Haz el cambio necesario para que el script no solicite por teclado el *id*, sino que se genere automáticamente. El id generado será una unidad más que el mayor id existente en el fichero de datos.
- Si se elige la opción L se mostrará el listado completo de datos del fichero sustituyendo el carácter delimitador por tabuladores. Antes del listado se mostrará el siguiente encabezado con las columnas separadas por tabuladores:
```
Id. Tipo Fecha Importe Descripción
--- ---- ----- ------- -----------
```
- Si se elige la opción S se realizará el cálculo del saldo en cuenta, teniendo en cuenta que hay líneas de dos tipos: ingresos y gastos.
- Si se elige la opción T se mostrará un listado con los 5 gastos de mayor importe, ordenados de mayor a menor importe. No deberán aparecer ingresos. Se mostrarán únicamente los campos fecha, importe y descripción.

### :keyboard: Reto 9 (Examen 23/24)
En este ejercicio deberás crear un script que servirá para facilitar la visualización y creación de usuarios locales del sistema.

- Crea un script llamado `userutils.sh`. Si el script se ejecuta sin parámetros de entrada o con el parámetro -h se mostrará una ayuda indicando las opciones disponibles del script:
```
USO: userutils.sh
-l : lista los usuarios del sistema con una vista simplificada
-n : creará un usuario local con los datos solicitados por teclado
```

- Si se lanza el script con la opción `-l`, se deberá mostrar un listado de los usuarios del sistema (`/etc/passwd`) mostrando únicamente los campos 1, 3 y 6, que corresponden al nombre del usuario, su uid y la ruta de su directorio personal.
- En la vista anterior haz que los usuarios aparezcan ordenados de forma descendente por el campo uid. Sustituye además el delimitador por espacios para que la vista sea más clara.
- Si se lanza el script con la opción `-n` se solicitará al usuario un nombre de usuario por teclado. Después de comprobar que el nombre de usuario no ha quedado vacío, creará el usuario a través del comando `adduser`.
- Si el script se lanza con otro parámetro distinto de los anteriores, el script mostrará un error explicativo y finalizará su ejecución.

### :keyboard: Reto 10 (Examen 23/24)
En este ejercicio vas a crear un script para implementar un pequeño configurador de equipos informáticos.  

El script llevará por nombre `pcmaker.sh` y utilizará un fichero de datos llamado `pcmaker.dat`. En este fichero se almacenará el catálogo de componentes que el usuario puede utilizar en el configurador de equipos siguiendo este formato: 
```
codigo;categoria;marca;modelo;precio 
```

Crea el fichero `pcmaker.dat` e introduce los siguientes datos: 
```
0001;placa base;ASUS;TUF Gaming B760;169 
0002;procesador;Intel;i5-12400F;139 
0003;placa base;MSI;MPG X670E;509 
0004;ram;Kingston;Fury Beast DDR4 16GB;44 
0005;procesador;AMD;Ryzen 5 5600X;149 
0006;ram;Corsair;Vengeance DDR5 32 GB;132 
0007;disco duro;Kingston;NV2 1TB;47 
```
- Cuando se lance el script `pcmaker.sh` se comprobará la existencia del fichero `pcmaker.dat`. Si el fichero no existe debe dar un aviso por pantalla indicando este hecho y pedir confirmación del usuario para continuar. Si el usuario decide continuar, se creará el fichero `pcmaker.dat` vacío. En caso contrario, finalizará la ejecución del script.  
- Una vez realizada la comprobación anterior, el script mostrará el siguiente menú de forma repetitiva hasta que el usuario elija la opción 5 (Salir). 
```
/----------\ 
| PC Maker | 
\----------/ 

1. Catálogo de componentes 
2. Añadir componentes 
3. Configurar un nuevo PC 
4. Valorar configuración 
5. Salir 
Opción:  
```
- Si se elige la opción 1 se mostrarán los datos del fichero `pcmaker.dat` ordenados por el campo de marca de manera ascendente, mostrando previamente este encabezado: 
```
código;categoría;marca;modelo;precio 
------*---------*-----*------*------ 
```
- Cuando se elija la opción 2 se solicitarán al usuario todos los datos campos a almacenar en el fichero: *código*, *categoría*, *marca*, *modelo* y *precio*.  Estos datos se almacenarán en el fichero sin borrar los ya existentes y conservando el formato indicado en el enunciado. 
- Modifica la funcionalidad anterior para que compruebe si el código introducido ya existe en el fichero. Si ya existe en el fichero, debe volver a solicitar un código hasta que se introduzca uno que no exista. 
- La opción 3 permitirá al usuario configurar un nuevo PC.
  - En primer lugar solicitará un nombre de fichero para almacenar los componentes seleccionados.
  - A continuación se mostrarán los componentes que hay en el catálogo por cada categoría. El orden de las categorías será Placa base > Procesador > Memoria RAM > Disco duro.
  - El usuario escribirá el código del componente elegido y se añadirá al fichero de la configuración junto con la marca y modelo.
  - Ejemplo de uso: 
```
Nombre de configuración: gaming.pc 

Elija placa base: 
0001 ASUS TUF Gaming B760 169 
0003 MSI MPG X670E 509 
Cód. placa base: 0003 

Elija procesador: 
0002 Intel i5-12400F 139 
0005 AMD Ryzen 5 5600X 149 
Cód. procesador: 0002 

Elija memoria RAM: 
0004 Kingston Fury Beast DDR4 16GB 44 
0006 Corsair Vengeance DDR5 32 GB 132 
Cód. memoria RAM: 0004 

Elija disco duro: 
0007 Kingston NV2 1TB 47 
Cód. disco duro: 0007 

Configuración almacenada en el fichero gaming.pc 
```
- La opción 4 se utilizará para hacer el presupuesto de una configuración que haya realizado el usuario anteriormente.
  - En primer lugar pedirá un nombre de fichero.
  - El script recorrerá el fichero de la configuración buscando el precio actualizado de cada componente en el fichero `pcmaker.dat` y totalizando el importe.
  - Al acabar añadirá al final del fichero de configuración una línea con la fecha de la valoración (fecha actual en formato dd/mm/aa) y el importe total.
  - Por último, mostrará por pantalla el fichero de configuración. 

# Referencias
