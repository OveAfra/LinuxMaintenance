#!/bin/bash


echo -e "Esta Herramienta te Permitira Instalar Los Drivers de Red Necesarios Para Usar Correctamente El Wifi"
echo ""
sleep 4
echo -e "Anote Las Siguiente Palabra: "
sudo lspci | grep Network
sleep 6

clear

figlet Drivers Wifi

echo -e " Eliga El Modelo de Su Tarjeta de Red:

(1)Atheros  (2)Broadcom  (3)Intel

    (4)Realtek    (5)ZyDas

(9)Driver Especiales     (0)Atras
"

read -p "Eleccion>>" opc

if [[ "${opc}" == "01" || "${opc}" == "1" ]]; then
echo -e "Instalando Drivers Atheros....."
sleep 2
sudo apt install firmware-atheros
echo -e "Driver Instalado :)"
sleep 4
sudo bash OAEMain.sh

elif [[ "${opc}" == "02" || "${opc}" == "2" ]]; then
echo -e "Instalando Drivers Broadcom...."
sleep 2
sudo apt install firmware-b43-installer
sudo apt install broadcom-sta-dkms
sudo apt install firmware-b43legacy-installer
sudo apt install firmware-brcm80211
echo -e "Driver Instalado :)"
sleep 4
sudo bash OAEMain.sh

elif [[ "${opc}" == "03" || "${opc}" == "3" ]]; then
echo -e "Instalando Drivers Intel...."
sleep 2
sudo apt install firmware-ipw2x00
sudo apt install firmware-intelwimax
sudo apt install firmware-iwlwifi
echo -e "Driver Instalado :)"
sleep 4
sudo bash OAEMain.sh

elif [[ "${opc}" == "04" || "${opc}" == "4" ]]; then
echo -e "Instalando Drivers Realtek...."
sleep 2
sudo apt install firmware-realtek
sudo apt install firmware--ti-connectivity
echo -e "Driver Instalado :)"
sleep 4
sudo bash OAEMain.sh

elif [[ "${opc}" == "05" || "${opc}" == "5" ]]; then
echo -e "Instalando Drivers ZyDas"
sleep 2
sudo apt install firmware-zd1211
echo -e "Driver Instalado :)"
sleep 4
sudo bash OAEMain.sh

elif [[ "${opc}" == "09" || "${opc}" == "9" ]]; then
echo -e "Instalando Drivers Especiales...."
sleep 2
sudo apt-get install firmware-linux firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree
echo -e "Driver Instalado :)"
sleep 4
sudo bash OAEMain.sh


elif [[ "${opc}" == "0" || "${opc}" == "00" ]]; then
echo -e "Volviendo...."
sleep 1
clear
sudo bash OAEMain.sh

else
echo -e "Los Datos Ingresados son Erroneos o Invalidos :("
sleep 3
clear
sudo bash OAEMain.sh


fi
