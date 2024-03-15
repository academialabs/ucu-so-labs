#!/bin/bash

# Directorio donde se encuentran los archivos a renombrar
directorio="/ruta/del/directorio"

# Patrón de búsqueda para los archivos a renombrar
patron="*.txt"

# Nuevo nombre para los archivos
nuevo_nombre="nuevo_nombre_"

# Renombrar archivos que coincidan con el patrón
for archivo in "$directorio"/$patron; do
    nuevo_nombre_archivo="${archivo/$patron/$nuevo_nombre${archivo##*/}}"
    mv "$archivo" "$nuevo_nombre_archivo"
    echo "Archivo $archivo renombrado como $nuevo_nombre_archivo"
done
