#!/bin/bash

# Umbral mínimo de espacio libre en disco (en MB)
umbral=1000

# Obtener el espacio disponible en disco en MB
espacio=$(df -BM --output=avail / | tail -n 1 | tr -d 'M')

# Verificar si el espacio disponible es menor que el umbral
if [ "$espacio" -lt "$umbral" ]; then
    echo "¡Advertencia! Espacio en disco inferior al umbral definido."
    echo "Espacio disponible: $espacio MB"
fi
