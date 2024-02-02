#!/bin/bash

while true; do
    clear
    echo "Seleccione una opción:"
    echo "1. Copia de seguridad"
    echo "2. Monitorización del sistema"
    echo "3. Gestión de logs"
    echo "4. Automatización de despliegue"
    echo "5. Control de acceso"
    echo "6. Monitorización de seguridad"
    echo "7. Gestión de recursos"
    echo "8. Automatización de informes"
    echo "9. Actualizaciones del sistema"
    echo "0. Salir"

    read -p "Ingrese el número de la opción: " opcion

    case $opcion in
        1)
            # Copia de seguridad
            tar -czf backup_$(date +"%Y%m%d").tar.gz /ruta/del/directorio
            ;;
        2)
            # Monitorización del sistema
            echo "Uso de CPU:"
            top -b -n 1 | grep "Cpu(s)"
            echo "Uso de Memoria:"
            free -m
            echo "Uso de Almacenamiento:"
            df -h
            ;;
        3)
            # Gestión de logs
            grep "PalabraClave" /var/log/archivo.log > informe.txt
            ;;
        4)
            # Automatización de despliegue
            # Agrega la lógica necesaria aquí
            ;;
        5)
            # Control de acceso
            chmod 700 /ruta/del/archivo
            ;;
        6)
            # Monitorización de seguridad
            clamscan -r /ruta/del/directorio
            ;;
        7)
            # Gestión de recursos
            # Agrega la lógica necesaria aquí
            ;;
        8)
            # Automatización de informes
            echo "Informe Automático $(date +"%Y%m%d")" > informe.txt
            # Agrega más información según sea necesario
            ;;
        9)
            # Actualizaciones del sistema
            apt-get update
            apt-get upgrade -y
            ;;
        0)
            # Salir del script
            echo "Saliendo del script. ¡Hasta luego!"
            exit
            ;;
        *)
            # Opción no válida
            echo "Opción no válida. Inténtalo de nuevo."
            ;;
    esac

    read -p "Presione Enter para continuar..."
done
