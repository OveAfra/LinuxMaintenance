#!/bin/bash

clear
echo -e "Bienvenid@s a Este Script donde Encontraras Un Kit Para Darle Mantenimiento a tu Linux"
echo ""
echo -e "Creditos a @OAE_Academy"
sleep 4
clear

figlet FT OAE 2.0
figlet Maintenance

echo -e "Escoja Una Accion a Realizar:
(1)Instalar Recursos          (2)Info del Hardware         (3)Info de la Memoria
(4)Info del CPU               (5)Info del Sistema          (6)Ver Direccion en la Red
(7)Ver Tiempo                 (8)Ver Calendario            (9)Ver Espacio Usado en Disco
(10)Ver Config del Kernel     (11)Ver Procesos del CPU     (12)Ver Espacio Usado Por Directorios
(13)Ver Arquitectura          (14)Acelerar Sistema         (15)Config de Interfaces
(16)Uso Ram en Tiempo Real    (17)Nombre del Usuario       (18)Mostrar Version de Linux
(19)Limpiar Sistema Linux     (20)Reparar Dependencias     (21)Solucionar Error de Bloqueos 'Lock'
(22)Instalar Drivers de Red   (23)Crear Memoria Swap       (24)Eliminar Memoria Swap
(00)Salir

"

read -p "Opcion>>> " opc

if [[ "${opc}" == "01" || "${opc}" == "1" ]]; then
echo -e "*****EL PROCESO PARA INSTALAR RECURSOS COMENZARA EN BREVE*****"
clear
echo -e "Se Actualizaran los Repositorios Antes de Continuar!"
sudo apt update
clear

echo -e "************
         *  Figlet  *
         ************"
sudo apt install figlet
sleep 2
echo -e "************
         * NeoFetch * 
         ************"
sudo apt install neofetch
sleep 2
echo -e "************
         *  Python  * 
         ************"
sudo apt install python 
sudo apt install python 3
sleep 1
echo -e "Verificando Version de Python...."
python3 --version
sleep 2
echo -e "************
         * HardInfo * 
         ************"
sudo apt install hardinfo
sleep 2
echo -e "************
         * Net-Tool * 
         ************"
sudo apt install net-tool
sleep 2
echo -e "************
         *   Wget   * 
         ************"
sudo apt install wget
sleep 2
echo -e "************
         *   Git    *
         ************"
sudo apt install git
sleep 2
echo -e "************
         *   Nmap   *
         ************"
sudo snap install nmap 
sudo apt  install nmap
sleep 2
sudo bash OAEMain.sh

elif [[ "${opc}" == "02" || "${opc}" == "2" ]]; then
hardinfo
sleep 3
clear
sudo bash OAEMain.sh

elif [[ "${opc}" == "03" || "${opc}" == "3" ]]; then
cat /proc/meminfo
sleep 5
clear
sudo bash OAEMain.sh

elif [[ "${opc}" == "04" || "${opc}" == "4" ]]; then
cat /proc/cpuinfo
sleep 5
echo -e "Mostrando Mas Informacion...."
lscpu
sleep 5
clear
sudo bash OAEMain.sh

elif [[ "${opc}" == "05" || "${opc}" == "5" ]]; then
neofetch
sleep 5
clear
sudo bash OAEMain.sh

elif [[ "${opc}" == "06" || "${opc}" == "6" ]]; then
arp
sleep 5
clear
sudo bash OAEMain.sh

elif [[ "${opc}" == "07" || "${opc}" == "7" ]]; then
uptime
echo -e "Acortando Tiempo..."
date
sleep 5
clear
sudo bash OAEMain.sh

elif [[ "${opc}" == "08" || "${opc}" == "8" ]]; then
cal
sleep 5
clear
sudo bash OAEMain.sh

elif [[ "${opc}" == "09" || "${opc}" == "9" ]]; then
df
echo -e "Mostrando en GB...."
du -sh
sleep 3
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "10" ]; then
uname -a
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "11" ]; then
ps
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "12" ]; then
du
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "13" ]; then
uname -m
echo -e "Mostrando Mas Detalles...."
uname -a
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "14" ]; then
echo -e "Acelerando......."
sudo  hdparm -W /dev/sda
sudo bash -c "echo 'vm.swappiness = 10' >> /etc/sysctl.conf"
free -m
sudo sync
sudo sysctl -w vm.drop_caches=3
echo -e "Acelerado con Exito :)"
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "15" ]; then
ifconfig
ifconfig -a
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "16" ]; then
watch -n 1 free -m
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "17" ]; then
whoami
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "18" ]; then
cat /proc/version
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "19" ]; then
sudo apt-get autoclean
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "20" ]; then
echo -e "Buscando Errores de Dependencia...."
sudo apt-get check
echo -e "Reparando Errores...."
sudo apt-get -f install
echo -e "Reparaciones Realizadas con Exito :)"
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "21" ]; then
echo -e "Reparando Errores...."
sudo fuser -vki /var/lib/dpkg/lock
sudo fuser -vki /var/lib/dpkg/lock-frontend
sudo rm -f /var/lib/dpkg/lock
sudo rm -f /var/lib/dpkg/lock-frontend
sudo dpkg --configure -a
sudo apt-get autoremove
echo -e "Solucion  Realizada con Exito :)"
echo -e "Ya No Tendras Problemas Con los Bloqueos ;)"
sleep 5
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "22" ]; then
sudo bash DriversRed.sh
sleep 2
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "23" ]; then
echo -e "Esta Herramienta te Permitira Crear un Espacio Swap a tu Gusto"
echo ""
sleep 4
clear

figlet Swap Memory

echo -e "Revisando si ya tiene Swap Memory Apropiada..."
sudo free --human
sleep 2
clear  
echo -e "Creando Nuevo Espacio de Memoria Swap"
echo -e "Dele un valor a la Swap (Para darlo en Gb Multiplique 1024 * cant de gb * 1024)"
echo -e "Ej: 1024*4*1024 = 4194304 ~Ingrese el valor resultante cuando lo pida~"
sleep 7
clear
echo -e "Ingrese el Valor para la Swap: "
read -p "Valor>> " swap
sudo dd if=/dev//zero of=/swapfile bs=1024 count="${swap}"
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo -e "Copia el Siguiente Mensaje y Pegalo en la Ultima Linea del Archivo que se Abrira:"
echo -e "/swapfile     swap     swap   defaults   0 0"
sleep 8
echo -e "Abriendo Archivo, No Olvides Pegar El Texto Anterior Al Final"
sudo nano /etc/fstab
sleep 3
echo -e "Verificando Nuevo Memory Swap..."
sudo free --human
echo -e "Memory Swap Creada Correctamente :)"
clear
sudo bash OAEMain.sh

elif [ "${opc}" == "24" ]; then
echo -e "Eliminando Archivo Swap..."
sudo swapoff-v /swapfile
sudo rm /swapfile
sleep 2
echo -e "Archivo Eliminado :("


elif [[ "${opc}" == "00" || "${opc}" == "0" ]]; then
echo -e "Saliendo...."
sleep 1
echo -e "Bye:)"
sleep 1
exit
clear
sudo apt update && sudo apt-get update
clear

else
echo -e "Los Datos Ingresados son Erroneos o Invalidos :("
sleep 3
clear
sudo bash OAEMain.sh

fi
