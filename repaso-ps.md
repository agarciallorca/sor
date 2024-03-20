# Plan de recuperación de PowerShell
A continuación se muestra una serie de ejercicios para realizar en **PowerShell**.

## Scripts
### :keyboard: Reto 1
Para tributar un determinado impuesto se debe ser mayor de 16 años y tener unos ingresos iguales o superiores a 1000 € mensuales. Escribir un script que pregunte al usuario su edad y sus ingresos mensuales y muestre por pantalla si el usuario tiene que tributar o no.
### :keyboard: Reto 2
La pizzería Bella Napoli ofrece pizzas vegetarianas y no vegetarianas a sus clientes. Los ingredientes para cada tipo de pizza aparecen a continuación.
- Ingredientes vegetarianos: Pimiento y tofu.
- Ingredientes no vegetarianos: Peperoni, Jamón y Salmón.

Escribir un script que pregunte al usuario si quiere una pizza vegetariana o no, y en función de su respuesta le muestre un menú con los ingredientes disponibles para que elija. Solo se puede eligir un ingrediente además de la mozzarella y el tomate que están en todas la pizzas. Al final se debe mostrar por pantalla si la pizza elegida es vegetariana o no y todos los ingredientes que lleva.
### :keyboard: Reto 3
Escribir un script que almacene la cadena de caracteres contraseña en una variable, pregunte al usuario por la contraseña hasta que introduzca la contraseña correcta.
### :keyboard: Reto 4
Escribir un script que pregunte el nombre completo del usuario en la consola y después muestre por pantalla el nombre completo del usuario tres veces, una con todas las letras minúsculas, otra con todas las letras mayúsculas y otra solo con la primera letra del nombre y de los apellidos en mayúscula. El usuario puede introducir su nombre combinando mayúsculas y minúsculas como quiera.
### :keyboard: Reto 5
Escribir un script que pregunte el nombre del usuario en la consola y después de que el usuario lo introduzca muestre por pantalla `NOMBRE tiene n letras`, donde `NOMBRE` es el nombre de usuario en mayúsculas y `n` es el número de letras que tienen el nombre.
### :keyboard: Reto 6
Escribir un script que pregunte el correo electrónico del usuario en la consola y muestre por pantalla otro correo electrónico con el mismo nombre (la parte delante de la arroba @) pero con dominio alu.edu.gva.es.
### :keyboard: Reto 7
Se quiere realizar un script que lea por teclado las 5 notas obtenidas por un alumno (comprendidas entre 0 y 10) y las almacene en un array. A continuación debe mostrar todas las notas, la nota media, la nota más alta que ha sacado y la menor.
### :keyboard: Reto 8
Escribir un script que guarde en una variable el diccionario {'Euro':'€', 'Dollar':'$', 'Yen':'¥'}, pregunte al usuario por una divisa y muestre su símbolo o un mensaje de aviso si la divisa no está en el diccionario.
### :keyboard: Reto 9
Escribir un script que guarde en un diccionario los precios de las frutas de la tabla, pregunte al usuario por una fruta, un número de kilos y muestre por pantalla el precio de ese número de kilos de fruta. Si la fruta no está en el diccionario debe mostrar un mensaje informando de ello.
|Fruta|Precio|
|-----|------|
|Plátano|1.35|
|Manzana|0.80|
|Pera|0.85|
|Naranja|0.70|
### :keyboard: Reto 10
Escribir un script que cree un diccionario simulando una cesta de la compra. El programa debe preguntar el artículo y su precio y añadir el par al diccionario, hasta que el usuario decida terminar. Después se debe mostrar por pantalla la lista de la compra y el coste total, con el siguiente formato:  
  
**Lista de la compra**  
Artículo 1:	Precio  
Artículo 2:	Precio  
Artículo 3:	Precio  
…	…  
Total	      Coste
### :keyboard: Reto 11
Escribir un script que permita gestionar la base de datos de clientes de una empresa. Los clientes se guardarán en un diccionario en el que la clave de cada cliente será su NIF, y el valor será otro diccionario con los datos del cliente (nombre, dirección, teléfono, correo, preferente), donde preferente tendrá el valor True si se trata de un cliente preferente. El programa debe preguntar al usuario por una opción del siguiente menú: (1) Añadir cliente, (2) Eliminar cliente, (3) Mostrar cliente, (4) Listar todos los clientes, (5) Listar clientes preferentes, (6) Terminar. En función de la opción elegida el programa tendrá que hacer lo siguiente:
1. Preguntar los datos del cliente, crear un diccionario con los datos y añadirlo a la base de datos.
2. Preguntar por el NIF del cliente y eliminar sus datos de la base de datos.
3. Preguntar por el NIF del cliente y mostrar sus datos.
4. Mostrar lista de todos los clientes de la base datos con su NIF y nombre.
5. Mostrar la lista de clientes preferentes de la base de datos con su NIF y nombre.
6. Terminar el programa.
### :keyboard: Reto 12 (Examen 23/24)
Tenemos una serie de ordenadores que requieren una licencia para hacer funcionar un software. Disponemos de clave de licencia almacenadas en un fichero llamado `licencias.dat`. Cada clave sirve para un ordenador. Diseña un script llamado `licencias.ps1` que asocie una clave a cada ordenador de acuerdo a los siguientes requerimientos:
- El script preguntará al usuario cuántos ordenadores hay y cuál es el prefijo de su nombre (por ejemplo A8-).
- Teniendo en cuenta lo indicado por el usuario, el script deberá crear un directorio llamado `licencias` que dentro tenga un subdirectorio para cada uno de los ordenadores.
- A continuación, el script leerá el fichero `licencias.dat` y almacenará su contenido en una variable llamada `$licencias`. Esta variable contendrá la lista de claves de licencia.
- Ahora el script deberá crear, dentro del directorio correspondiente a cada ordenador, un fichero llamado `clave.txt` que contenga una clave de la lista. Si hay más ordenadores que claves, se asignarán en orden. Esto es, puede haber directorios que se queden sin fichero `clave.txt`.
- Haz que el proceso anterior almacene en un fichero llamado `licencias-aplicadas.csv` la correspondencia del nombre de ordenador con la clave de licencia asignada. Este proceso no debe sobreescribir el contenido del fichero.
```
A8-1;ABCD-1234-EFGH-5678
A8-2;WXYZ-5678-IJKL-9012
A8-3;QWERT-0987-ASDF-6543
...
```
### :keyboard: Reto 13 (Examen 23/24)
Se quiere diseñar un script `inventario.ps1` para gestionar el inventario de las aulas de informática del instituto. Para ello se utilizará un diccionario llamado `$inventario` que almacenará como clave el nombre de la ubicación y un array de tres valores asociados a la clave: *nº de equipos*, *tipo* y *características*.

- Cuando se ejecute el script se comprobará si el diccionario tiene datos. Si no tiene datos se inicializará el diccionario con los valores de la siguiente tabla. Si por el contrario el diccionario sí tiene datos, se pasará a mostrar el menú.

|Clave (Ubicación)|Valor 1 (Nº equipos)|Valor 2 (Tipo)|Valor 3 (Características)|
|-----------------|--------------------|--------------|-------------------------|
|Aula 5|25|Sobremesa|Intel Core i3 9th Gen|
|Aula 3|20|AIO|Intel Core i5 11th Gen|
|Aula 1|21|Sobremesa|Intel Pentium Gold|
- Una vez realizada la comprobación anterior, el script mostrará un menú para gestionar el diccionario. El script mostrará repetitivamente el menú siguiente hasta que el usuario elija la opción de salir:
```
Inventario TIC
==============
1. Listar ubicaciones
2. Añadir ubicación
3. Eliminar ubicación
4. Modificar datos
5. Salir

Elija una opción:
```
#### Funcionamiento
- Si se elige una opción que no esté en el menú, el script dará un error indicando que es una opción no válida y volverá a mostrar el menú.
- Opción 1. Mostrará por pantalla todas las claves del diccionario y sus valores asociados con el siguiente formato:
```
Aula 5:
  25 equipos Sobremesa
  Intel Core i3 9th Gen
Aula 3:
  20 equipos AIO
  Intel Core i5 11th Gen
Aula 1:
  21 equipos Sobremesa
  Intel Pentium Gold
```
- Opción 2. Se solicitarán al usuario por teclado los datos necesarios para añadir al diccionario `$inventario` una nueva ubicación con su array de valores asociado. Si la ubicación se deja en blanco, no se pedirán el resto de datos ni se almacenará en el diccionario. 
- Opción 3. Solicitará una ubicación y la eliminará del diccionario `$inventario`.
- Opción 4. Solicitará una ubicación y permitirá modificar cualquiera de los 3 valores asociados. Si un valor se deja en blanco, se mantendrá el valor que tenía anteriormente. 
```
Ubicación a modificar: Aula 5
Número de equipos (25): 26 
Tipo (Sobremesa):
Características (Intel Core i3 9th Gen):
OK! Ubicación actualizada
```
## Comandos
### :keyboard: Reto 1
Obtén un listado de procesos que están en ejecución en el sistema.
### :keyboard: Reto 2
Del listado anterior, haz que se muestren únicamente las propiedades `ProcessName`, `Id`, `SessionId` y `PagedMemorySize`
### :keyboard: Reto 3
Ordena el listado anterior por la propiedad Id de forma ascendente.
### :keyboard: Reto 4
Filtra los resultados del listado anterior para que sólo aparezcan aquellos procesos cuya propiedad `SessionId` sea distinta de 0.
### :keyboard: Reto 5
Haz ahora que además sólo aparezcan aquellos procesos que tengan un uso de memoria (`PagedMemorySize`) mayor que 10MB.
### :keyboard: Reto 6
Consigue estas alternativas:
- Que se muestren por pantalla cuántos procesos cumplen los criterios anteriores y su uso de memoria promedio (`Average`).
- Que el listado de procesos obtenido se almacene en un fichero llamado `procesosgrandes.txt`.
### :keyboard: Reto 7 (Examen 23/24)
Obtén un listado de servicios que tengan configurado el arranque (`StartType`) como automático pero que estén en estado (`Status`) detenido. Muestra únicamente las propiedades `Name` y `DisplayName`.
### :keyboard: Reto 8 (Examen 23/24)
Ejecuta el comando necesario para obtener el tamaño ocupado por todos los ficheros del directorio `c:\users` (y sus subdirectorios).
### :keyboard: Reto 9 (Examen 23/24)
El comando `Get-EventLog -LogName System` muestra por pantalla los eventos ocurridos en el sistema. Obtén los eventos que contengan en su mensaje (propiedad `Message`) la palabra *apagado* pero no contenga el texto *DHCP*. Ordena por la propiedad `TimeGenerated` y muestra únicamente los 10 más recientes.
### :keyboard: Reto 10 (Examen 23/24)
Crea un directorio llamado `eventos`. Copia en el directorio los ficheros con extensión *evtx* del directorio `c:\windows\system32\winevent\logs` que tengan una fecha de modificación posterior al día 14 de febrero de 2024. Elimina del directorio `eventos` los ficheros con un tamaño superior a 1000000.

# Referencias
[Aprende con Alf](https://aprendeconalf.es/)
