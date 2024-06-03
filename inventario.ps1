if($inventario.Count -eq 0)
{
    $inventario = @{"Aula 5" = @(25,"Sobremesa","Intel Core i3 9th Gen");
                    "Aula 3" = @(20,"AIO","Intel Core i5 11th Gen");
                    "Aula 1" = @(21,"Sobremesa","Intel Pentium Gold")
                   }
}

do
{
    Write-Host "Inventario TIC"
    Write-Host "=============="
    Write-Host "1.	Listar ubicaciones"
    Write-Host "2.	Añadir ubicación"
    Write-Host "3.	Eliminar ubicación"
    Write-Host "4.	Modificar datos"
    Write-Host "5.	Salir"

    $opcion = Read-Host "Elija una opción"

    if($opcion -eq 1)
    {
        foreach($clave in $inventario.Keys)
        {
            Write-Host "$clave :"
            Write-Host "  "$inventario.$clave[0] equipos $inventario.$clave[1]
            Write-Host "  "$inventario.$clave[2]
        }
    }
    elseif($opcion -eq 2)
    {
        $clave = Read-Host "Introduce nueva ubicación"
        if("$clave" -ne "")
        {
            $num = Read-Host "Nº equipos"
            $tipo = Read-Host "Tipo"
            $caract = Read-Host "Características"

            $inventario.Add($clave,@($num,$tipo,$caract))
        }
    }
    elseif($opcion -eq 3)
    {
        $clave = Read-Host "Ubicación a eliminar"

        $inventario.Remove($clave)
    }
    elseif($opcion -eq 4)
    {
        $clave = Read-Host "Ubicación a modificar"

        $num = Read-Host "Número de equipos ("$inventario.$clave[0]")"
        if($num -ne "")
        {
            $inventario.$clave[0] = $num
        }
        $tipo = Read-Host "Tipo ("$inventario.$clave[1]")"
        if($tipo -ne "")
        {
            $inventario.$clave[1] = $tipo
        }    
        $caract = Read-Host "Características ("$inventario.$clave[2]")"
        if($caract -ne "")
        {
            $inventario.$clave[2] = $caract
        }
    }
    else
    {
        if($opcion -ne 5)
        {
            Write-Host "ERROR: Opción no válida"
        }
    }
}while($opcion -ne 5)
