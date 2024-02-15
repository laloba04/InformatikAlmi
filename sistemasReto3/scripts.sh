#!/bin/bash

while true; do
    clear
    echo -e "\e[1;36m================================================\e[0m"
    echo -e "\e[1;36m================ InformatikAlmi ================\e[0m"
    echo -e "\e[1;36m================================================\e[0m"
    echo -e "\e[1;33mSeleccione una opción:\e[0m"
    echo -e "\e[1;32m1. Copia de seguridad\e[0m" 
    echo -e "\e[1;32m2. Dime qué programa quieres instalar?\e[0m" 
    echo -e "\e[1;32m3. Actualizaciones del sistema\e[0m" 
    echo -e "\e[1;32m4. Monitorización del sistema\e[0m" 
    echo -e "\e[1;32m5. Mostrar espacio en disco\e[0m"
    echo -e "\e[1;32m6. Ver archivos en el directorio actual\e[0m" 
    echo -e "\e[1;32m7. Buscar archivos en el sistema\e[0m" 
    echo -e "\e[1;32m8. Mostrar el último usuario creado\e[0m" 
    echo -e "\e[1;31m9. Salir\e[0m" 

    read -p "Ingrese el número de la opción: " opcion

    case $opcion in

        1)
            # Copia de seguridad
            echo -e "\e[1;34mIniciando copia de seguridad...\e[0m"
            read -p "¿De qué usuario quieres hacer el backup?: " backup
            read -p "¿Dónde quieres hacer el backup?: " ruta
            fecha_backup=$(date +%y-%m-%d)
            backup_dir="$ruta/$fecha_backup"
            
            # Verifica si la ruta de destino existe
            if [ ! -d "$backup_dir" ]; then
                sudo mkdir -p "$backup_dir"
            fi

            sudo cp -r "/home/$backup" "$backup_dir"
            echo -e "\e[1;32mCopia de seguridad completada en: $backup_dir\e[0m"
            ;;

        2)
            # Programa a instalar
            read -p "¿Qué programa quieres instalar?: " instalar
            sudo apt install $instalar
            ;;

        3)
            # Actualizaciones del sistema
            echo -e "\e[1;34mBuscando actualizaciones...\e[0m"
            sudo apt update && sudo apt upgrade -y
            echo -e "\e[1;32mActualización completada.\e[0m"
            ;;

        4)
            # Monitorización del sistema
            echo -e "\e[1;34mMostrando uso del sistema:\e[0m"
            echo -e "\e[1;32mUso de CPU:\e[0m"
            top -b -n 1 | grep "Cpu(s)"
            echo -e "\e[1;32mUso de Memoria:\e[0m"
            free -m
            echo -e "\e[1;32mUso de Almacenamiento:\e[0m"
            df -h
            ;;

        5)
            # Mostrar espacio en disco
            echo -e "\e[1;34mMostrando espacio en disco:\e[0m"
            df -h
            ;;

        6)
            # Ver archivos en el directorio actual
            echo -e "\e[1;34mArchivos en el directorio actual:\e[0m"
            ls
            ;;

        7)
            # Buscar archivos en el sistema
            read -p "Ingrese el nombre del archivo a buscar: " nombre_archivo
            echo -e "\e[1;34mBuscando archivos con el nombre '$nombre_archivo'...\e[0m"
            
            # Utiliza el comando find para buscar archivos con el nombre proporcionado
            find / -type f -name "$nombre_archivo" 2>/dev/null
            
            echo -e "\e[1;32mBúsqueda completada.\e[0m"
            ;;

        8)
            # Ultimo usuario creado
            echo -e "\e[1;34mA continuación mostraremos el último usuario creado:\e[0m"
            tail -n1 /etc/passwd | cut -d ":" -f1
            ;;

        9)
            # Salir del script
            echo -e "\e[1;31m¡Hasta luego!\e[0m"
            exit
            ;;

        *)
            # Opción no válida
            echo -e "\e[1;31mOpción no válida. Inténtalo de nuevo.\e[0m"
            ;;
    esac

    read -p "Presione Enter para continuar..."
done
