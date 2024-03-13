# Laboratorio 01:
## Creación de Scripts en PowerShell para Automatizar Tareas Comunes del Sistema Operativo

---

## Objetivo:

El objetivo de este laboratorio es que los estudiantes adquieran habilidades en la creación de scripts en PowerShell para automatizar tareas comunes del sistema operativo en entornos Windows. A través de este ejercicio, los estudiantes aprenderán a utilizar los comandos básicos de PowerShell, a manipular archivos y directorios, y a automatizar tareas repetitivas.

---

## Pre-Laboratorio:

Antes de comenzar el laboratorio, los estudiantes deben familiarizarse con los siguientes conceptos y herramientas:

1. **Introducción a PowerShell:** Los estudiantes deben repasar los comandos básicos de PowerShell, como `Get-ChildItem`, `New-Item`, `Copy-Item`, `Move-Item`, etc.
2. **Sintaxis de los scripts de PowerShell:** Los estudiantes deben comprender la estructura básica de un script en PowerShell, incluyendo la declaración del intérprete (`#Requires -Version 5.1`), comentarios, variables, condicionales, bucles, etc.
3. **Entorno de desarrollo:** Los estudiantes deben tener acceso a un entorno Windows con PowerShell instalado para escribir y ejecutar scripts.

---

## Laboratorio:

1. **Ejercicio 1: Creación de un Script para Respaldo de Archivos:**
   - Los estudiantes crearán un script en PowerShell que automatice el respaldo de archivos en un directorio específico.
   - El script deberá copiar todos los archivos de un directorio de origen a un directorio de respaldo, manteniendo la estructura de directorios.
   - Se alentará a los estudiantes a utilizar variables para definir los directorios de origen y respaldo, así como a implementar un mensaje de confirmación al usuario antes de realizar la copia.

2. **Ejercicio 2: Renombrado Masivo de Archivos:**
   - Los estudiantes desarrollarán un script en PowerShell que renombre automáticamente un conjunto de archivos en un directorio.
   - El script deberá permitir al usuario especificar un patrón de búsqueda y un nuevo nombre para los archivos que coincidan con ese patrón.
   - Se fomentará a los estudiantes a utilizar ciclos y expresiones regulares para implementar esta funcionalidad.

3. **Ejercicio 3: Monitoreo de Espacio en Disco:**
   - Los estudiantes escribirán un script en PowerShell que monitoree el espacio en disco de un sistema y notifique al usuario cuando el espacio disponible sea inferior a un umbral predefinido.
   - El script deberá ejecutarse de forma periódica utilizando la tarea programada de Windows.
   - Se animará a los estudiantes a utilizar cmdlets como `Get-WmiObject` para obtener información sobre el espacio en disco.

---

## Post-Laboratorio:

Después de completar el laboratorio, los estudiantes deben realizar las siguientes actividades:

1. **Prueba y depuración:** Los estudiantes deben probar sus scripts en diferentes escenarios y depurar cualquier error que encuentren.
2. **Documentación:** Los estudiantes deben documentar sus scripts explicando su funcionamiento, variables utilizadas, y cualquier otra información relevante.
3. **Experimentación adicional:** Se alienta a los estudiantes a experimentar con otros cmdlets de PowerShell y a desarrollar nuevos scripts para automatizar tareas adicionales.

---

## Conclusión:

Al completar este laboratorio, los estudiantes habrán adquirido habilidades prácticas en la creación de scripts en PowerShell para automatizar tareas comunes del sistema operativo en entornos Windows. Estas habilidades son fundamentales para mejorar la eficiencia y la productividad en la administración de sistemas y el desarrollo de software en plataformas Windows.
