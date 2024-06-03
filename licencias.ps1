$num = read-host "¿Cuántos ordenadores hay?"
$prefijo = Read-Host "Introduce el prefijo"

New-Item -ItemType Directory -Name licencias

for($i=1;$i -le $num;$i++)
{
    New-Item -ItemType Directory -Path licencias -Name $prefijo$i
}

$licencias = Get-Content C:\Users\GarciaOlmedo\Desktop\licencias.dat

$contador = 1
foreach($clave in $licencias)
{
    Write-Output $clave > licencias\$prefijo$contador\clave.txt

    $linea = $prefijo + $contador + ";" + $clave
    Write-Output $linea >> licencias-aplicadas.csv

    $contador++
}
