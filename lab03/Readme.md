# Mi Servidor FTP con Docker

Este proyecto contiene un Dockerfile para construir una imagen de Docker que ejecuta un servidor FTP basado en Ubuntu 24.04 y `vsftpd`.

## Contenido

* [Descripción](#descripción)
* [Cómo usar](#cómo-usar)
    * [Requisitos](#requisitos)
    * [Construir la imagen](#construir-la-imagen)
    * [Ejecutar el contenedor](#ejecutar-el-contenedor)
    * [Conectarse al servidor FTP](#conectarse-al-servidor-ftp)
* [Configuración](#configuración)
    * [Usuario FTP](#usuario-ftp)
    * [Modo Pasivo](#modo-pasivo)
* [Consideraciones de Seguridad](#consideraciones-de-seguridad)

## Descripción

Este Dockerfile automatiza la creación de una imagen de Docker que contiene un servidor FTP (`vsftpd`) corriendo sobre Ubuntu 24.04. Se configura un usuario FTP básico para permitir la conexión y transferencia de archivos.

## Cómo usar

### Requisitos

* [Docker](https://www.docker.com/get-started) instalado en tu sistema.

### Construir la imagen

1.  Guarda el siguiente contenido en un archivo llamado `Dockerfile` en un directorio de tu elección:

    ```dockerfile
    # Establecer la imagen base
    FROM ubuntu:24.04

    # Mantenedor (opcional)
    MAINTAINER Tu Nombre <tu.correo@ejemplo.com>

    # Actualizar los repositorios e instalar el servidor FTP (vsftpd es una opción popular)
    RUN apt-get update && \
        apt-get install -y vsftpd

    # Configurar vsftpd (puedes personalizar esto según tus necesidades)
    # Copiar un archivo de configuración personalizado (opcional)
    # COPY vsftpd.conf /etc/vsftpd.conf

    # Exponer el puerto por defecto del FTP (control) y un rango de puertos para datos pasivos (si es necesario)
    EXPOSE 21
    EXPOSE 20
    # Rango de puertos para modo pasivo (ejemplo)
    EXPOSE 1024-1048 

    # Crear un usuario FTP (opcional)
    ARG FTP_USER=ftpuser
    ARG FTP_PASSWORD=ftppassword
    RUN useradd -m -d /home/${FTP_USER} -s /bin/bash ${FTP_USER} && \
        echo "${FTP_USER}:${FTP_PASSWORD}" | chpasswd

    # Crear el directorio para los archivos FTP (opcional)
    RUN mkdir -p /home/${FTP_USER}/ftp && \
        chown ${FTP_USER}:${FTP_USER} /home/${FTP_USER}/ftp

    # Comando para iniciar el servidor FTP al ejecutar el contenedor
    CMD ["/usr/sbin/vsftpd", "/etc/vsftpd.conf"]
    ```

2.  Navega al directorio donde guardaste el `Dockerfile` en tu terminal.

3.  Ejecuta el siguiente comando para construir la imagen Docker:

    ```bash
    docker build -t mi-ftp-server .
    ```

### Ejecutar el contenedor

Una vez que la imagen se haya construido exitosamente, puedes ejecutar un contenedor basado en ella con el siguiente comando:

```bash
docker run -d -p 21:21 -p 1024-1048:1024-1048 mi-ftp-server