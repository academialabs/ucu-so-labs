import psutil

# Umbral mínimo de espacio libre en disco (en MB)
umbral = 1000

# Obtener el espacio disponible en disco en MB
espacio = psutil.disk_usage('/').free / (1024 * 1024)

# Verificar si el espacio disponible es menor que el umbral
if espacio < umbral:
    print("¡Advertencia! Espacio en disco inferior al umbral definido.")
    print("Espacio disponible:", espacio, "MB")
