#!/bin/bash

I2C=$(i2cget -f -y 2 0x76 0xD0)
if [ "$I2C" = "0x58" ]; then
	echo "Barometre parfait"
else
	echo "ERREURE"
fi
