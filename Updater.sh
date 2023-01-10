#!/bin/bash

# Menú
while :
do
    clear
    figlet "UPDATER"
    echo "By:FrankoSav"
    
    echo "1. Actualizar sistema"
    echo "2. Actualizar repositorios"
    echo "3. Salir"
    echo
    read -p "Selecciona una opción: " opcion
    case $opcion in
        1)
            # Actualizar sistema
            sudo apt-get update && sudo apt-get upgrade -y
            sudo apt dist-upgrade
            toilet -f small "Actualizado Rey"
            read -p "Presiona Enter para continuar"
        ;;
        2)
            # Actualizar Repositorios
            sudo parrot-upgrade -y
            git fetch --all
            git pull --all
            toilet -f small "Actualizado Rey"
            read -p "Presiona Enter para continuar"
        ;;
        3)
            # Salir
            break
        ;;
        *)
            # Opción inválida
            echo "Opción inválida"
            read -p "Presiona Enter para continuar"
        ;;
    esac
done
