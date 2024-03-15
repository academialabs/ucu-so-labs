#!/bin/bash

# Directorio de origen y destino para el respaldo
origen="/ruta/del/directorio/origen"
destino="/ruta/del/directorio/destino"

# Verificar si el directorio de destino existe, si no, crearlo
if [ ! -d "$destino" ]; then
    mkdir -p "$destino"
fi

# Copiar archivos del directorio de origen al directorio de destino
cp -R "$origen"/* "$destino"

echo "Respaldo completado en $destino"
