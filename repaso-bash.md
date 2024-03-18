# Itinerario de entrenamiento de Bash
A continuación se muestra una serie de ejercicios para realizar en **Bash**.

## Scripts
### :keyboard: Reto 10 (Examen 23/24)
En este ejercicio deberás crear un script que servirá para facilitar la visualización y creación de usuarios 
locales del sistema.

Consulta el fichero `/etc/passwd` que contiene información de los usuarios del sistema y responde:
- ¿Cuál es el delimitador utilizado en el fichero? ______________
- ¿Cuántos campos tiene el fichero? ___________

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
