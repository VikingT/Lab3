#echo "300" > /sys/class/leds/beaglebone:green:usr0/delay_on
#echo "700" > /sys/class/leds/beaglebone:green:usr0/delay_off


# Chemin vers le fichier de contrôle de la LED
LED_PATH="/sys/class/leds/beaglebone:green:usr0"

# Configuration du mode de la LED (si nécessaire)
echo none > "$LED_PATH/trigger"  # Désactive tout mode de gestion

# Changement du mode à "default-on" pour activer le clignotement
echo "default-on" > "$LED_PATH/trigger"

# Boucle infinie pour clignoter la LED
while true; do
    echo 1 > "$LED_PATH/brightness"  # Allume la LED
    sleep 0.3                          # Attend 300 ms
    echo 0 > "$LED_PATH/brightness"  # Éteint la LED
    sleep 0.7                          # Attend 700 ms
done
