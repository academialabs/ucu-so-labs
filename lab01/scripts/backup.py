import shutil

# Directorio de origen y destino para el respaldo
origen = "/ruta/del/directorio/origen"
destino = "/ruta/del/directorio/destino"

# Verificar si el directorio de destino existe, si no, crearlo
if not os.path.exists(destino):
    os.makedirs(destino)

# Copiar archivos del directorio de origen al directorio de destino
shutil.copytree(origen, destino)

print("Respaldo completado en", destino)
