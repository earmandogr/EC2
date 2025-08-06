#!/bin/bash

echo "----- Uso de CPU -----"
top -bn1 | grep "Cpu(s)"

echo -e "\n----- Uso de Memoria -----"
free -h

echo -e "\n----- Uso de Disco -----"
df -h

echo -e "\n----- Estado de Red -----"
ip a

echo -e "\n----- Errores recientes en logs (últimas 20 líneas) -----"
sudo journalctl -p err -n 20

