#!/bin/bash

I2C=$(i2cget -f -y 2 0x68 0x75)
if [ "$I2C" = "0x71" ]; then
        echo "Gyroscope parfait"
else
        echo "ERREURE"
fi
