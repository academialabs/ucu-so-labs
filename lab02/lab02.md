## Creación de una Máquina Virtual y Configuración de un Servidor Web

### Objectivo

Este procedimiento describe los pasos necesarios para crear una máquina virtual y configurar un servidor web en la plataforma de Azure.

### Key Steps

\
**1. Crear una Máquina Virtual** [0:11](https://www.loom.com/share/f9f886aeb1724b2eb3ccb6b62571fbfa?t=11)

- Accede a tu cuenta de Azure.
- Selecciona la opción para crear una nueva máquina virtual.
- Crea un grupo de recursos y nómbralo adecuadamente (ej. "miGrupo").
- Selecciona el sistema operativo (ej. Ubuntu 22.04).
- Asigna un nombre identificativo a tu servidor web (ej. "miServidor").
- Genera una clave SSH y nómbrala de manera identificativa.

\
**2. Configuración de Puertos** [0:48](https://www.loom.com/share/f9f886aeb1724b2eb3ccb6b62571fbfa?t=48)

- Asegúrate de abrir el puerto HTTP (80) y el puerto HTTPS (443) durante la creación de la máquina virtual.

\
**3. Validación y Creación** [1:10](https://www.loom.com/share/f9f886aeb1724b2eb3ccb6b62571fbfa?t=70)

- Revisa todos los parámetros de configuración.
- Haz clic en 'Crear' y espera a que la máquina virtual se despliegue.

\
**4. Descargar y Almacenar la Clave SSH** [1:29](https://www.loom.com/share/f9f886aeb1724b2eb3ccb6b62571fbfa?t=89)

- Descarga la clave SSH y guárdala en una carpeta segura en tu PC (ej. "llaves").

\
**5. Conexión a la Máquina Virtual** [1:59](https://www.loom.com/share/f9f886aeb1724b2eb3ccb6b62571fbfa?t=119)

- Copia la dirección IP pública de tu máquina virtual.
- Utiliza el comando SSH para conectarte:

  ```
  ssh -i /ruta/a/tu/llave azureuser@IP_PUBLICA
  ```
- Cambia los permisos de la clave SSH:

  ```
  chmod 600 /ruta/a/tu/llave
  ```

\
**6. Instalación de Software** [2:54](https://www.loom.com/share/f9f886aeb1724b2eb3ccb6b62571fbfa?t=174)

- Ejecuta los comandos necesarios para instalar el software requerido en tu servidor (ej. Apache).
- Asegúrate de usar 'sudo' cuando sea necesario.

\
**7. Personalización de la Página Web** [4:12](https://www.loom.com/share/f9f886aeb1724b2eb3ccb6b62571fbfa?t=252)

- Crea o edita la página web que deseas mostrar en tu servidor.
- Guarda los cambios correctamente usando:

  ```
  Ctrl + O (para guardar)
  Ctrl + X (para salir)
  ```

\
**8. Verificación de la Página Web** [5:28](https://www.loom.com/share/f9f886aeb1724b2eb3ccb6b62571fbfa?t=328)

- Abre un navegador web y escribe la dirección IP pública de tu servidor para verificar que la página se muestre correctamente.

### Cautionary Notes

- Asegúrate de que la clave SSH tenga los permisos correctos para evitar problemas de conexión.
- Verifica que los puertos estén abiertos para evitar problemas al acceder al servidor.

### Tips for Efficiency

- Utiliza nombres descriptivos para tus recursos para facilitar la identificación.
- Mantén un registro de comandos utilizados para futuras referencias.
- Realiza una copia de seguridad de tu clave SSH en un lugar seguro.

<https://www.loom.com/share/f9f886aeb1724b2eb3ccb6b62571fbfa>