#!/bin/bash

sudo apt install figlet ; sudo apt install toilet
# Menu
while :
do
    clear
    figlet "UPDATERLINUX"
    echo "By:FrankoSav"
    
    echo "1- Update Linux"
    echo "2- Update Parrot Os"
    echo "3- Exit"
    echo
    read -p "Select A Option: " opcion
    case $opcion in
        1)
            # Update Linux 
            sudo apt-get update && sudo apt-get upgrade -y
            sudo apt dist-upgrade
            toilet -f small "Done King"
            read -p "Press Enter to continue"
        ;;
        2)
            # Update Parrot
            sudo parrot-upgrade -y
            git fetch --all
            git pull --all
            toilet -f small "Done King"
            read -p "Press Enter to continue"
        ;;
        3)
            # Exit
            break
        ;;
        *)
            # Invalid Option
            echo "Invalid Option"
            read -p "Press Enter to continue"
        ;;
    esac
done
