import os

# Directorio donde se encuentran los archivos a renombrar
directorio = "/ruta/del/directorio"

# Patrón de búsqueda para los archivos a renombrar
patron = "*.txt"

# Nuevo nombre para los archivos
nuevo_nombre = "nuevo_nombre_"

# Renombrar archivos que coincidan con el patrón
for archivo in os.listdir(directorio):
    if archivo.endswith(".txt"):
        nuevo_nombre_archivo = nuevo_nombre + archivo
        os.rename(os.path.join(directorio, archivo), os.path.join(directorio, nuevo_nombre_archivo))
        print("Archivo", archivo, "renombrado como", nuevo_nombre_archivo)
