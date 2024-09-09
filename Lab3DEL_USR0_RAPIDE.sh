#!/bin/bash

# Definir le chemin de la LED USR0
LED="/sys/class/leds/beaglebone:green:usr0/"

# Verifier si la LED existe
if [ ! -d "$LED" ]; then
    echo "La LED USR0 n'existe pas."
    exit 1
fi

# Faire clignoter la LED le plus rapidement possible
while true; do
    echo "1" > "${LED}brightness"  # Allumer la LED
 #   sleep 0.1                      # Attendre 100 ms
    echo "0" > "${LED}brightness"  # Eteindre la LED
 #   sleep 0.1                      # Attendre 100 ms
done
