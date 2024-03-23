# Ajuste de brillo en Linux para monitores que se basen en el estandar DDC/CI 

Luego de buscar diferentes soluciones que me permitan ajustar el brillo de mi monitor para escritorio en Linux y no encontrar ninguna que me funcione. Pude darme cuenta que habia un problema entre el modelo del monitor y los controladores de brillo que utilizan las aplicaciones para este fin. Como solución he construido este basico script bash, que permite ajustar el brillo a partir de su ejecución y posterior seleccion de valores. Esto es logrado utilizando **ddcutil**. 

Solo basta con ejecutarlo desde una ubicación de su equipo y verá algo como esto: 

![Captura desde 2024-03-22 22-09-51](https://github.com/ju4nc5r/scripts/assets/31509271/ea2396bf-305d-4c48-b808-c59bf32b670d)


Luego de seleccionar alguna de las opciones, devolverá los valores que se establecieron de brillo y contraste. Es por eso, que en caso de preferir configurarlo manualmente, deberá ingresar un valor para el brillo y otro para el contraste. En donde puede ir probando distintas configuraciones hasta obtener la deseada. 

![Captura desde 2024-03-22 22-14-25](https://github.com/ju4nc5r/scripts/assets/31509271/1f3181d3-b2f9-4728-9666-630e3612e402)


Tambien es posible matchear la ubicación donde guardemos este script, a una palabra reservada definida a nuestra preferencia. En este caso, utilice la palabra "ajustebrillo" como palabra reservada para que ejecute el script que esta definido abajo. Esto se puede hacer agregando las siguientes lineas al archivo **.bashrc**

````console
function ejecutar_script {
    if [ "$1" = "ajustebrillo" ]; then
        /ruta/a/tu/script.sh
    else
        echo "Comando no reconocido"
    fi
}
````

Esto es una solución para salir del apuro en caso de que no funcione otra alternativa conocida, en mi caso logro funcionarme y la utilizo en actualmente.
