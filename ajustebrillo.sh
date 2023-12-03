#!/bin/bash
#   M. Juan Cruz - 1/12
#   Objetivo: Ajuste sencillo de brillo en monitores que se basen en el protocolo DDC/CI.
#

echo "Ingrese la opcion deseada:"
echo "0. Valores actuales"
echo "1. Nivel: Bajo"
echo "2. Nivel: Medio"
echo "3. Nivel: Alto"
echo "4. Prefiero configurarlo"
read -p "Opción: " option

actuales() {
  echo "Valor actual de brillo es: "
  ddcutil getvcp 10

  echo "Valor actual de contraste es: "
  ddcutil getvcp 12
  }

if [ "$option" = 0 ]; then 
  actuales
fi

if [ "$option" = 1 ]; then 
  ddcutil setvcp 10 0  
  ddcutil setvcp 12 10
  actuales
fi

if [ "$option" = 2 ]; then 
  ddcutil setvcp 10 50  
  ddcutil setvcp 12 30
  actuales
fi

if [ "$option" = 3 ]; then 
  ddcutil setvcp 10 80  
  ddcutil setvcp 12 50 
  actuales
fi

if [ "$option" = 4 ]; then

  read -p "Ingrese el valor de brillo deseado: " new_brillo
  read -p "Ingrese el valor de contraste deseado: " new_contraste

  echo "Ajustando brillo..."
  ddcutil setvcp 10 $new_brillo
  
  echo "Listo. Ajustando contraste..."
  ddcutil setvcp 12 $new_contraste
  
  actuales
fi





