# Servidor Nginx Personalizado con Docker

Este proyecto contiene un Dockerfile para construir una imagen de Docker que ejecuta un servidor web Nginx en Debian, sirviendo una página HTML personalizada con el mensaje "Bienvenido a UCU-SO-LABS".

## Contenido

* [Descripción](#descripción)
* [Cómo usar](#cómo-usar)
    * [Requisitos](#requisitos)
    * [Construir la imagen](#construir-la-imagen)
    * [Ejecutar el contenedor](#ejecutar-el-contenedor)
    * [Acceder al servidor web](#acceder-al-servidor-web)
* [Personalización](#personalización)
    * [Modificar el contenido HTML](#modificar-el-contenido-html)
    * [Configuración adicional de Nginx](#configuración-adicional-de-nginx)

## Descripción

Este Dockerfile automatiza la creación de una imagen de Docker que contiene un servidor web Nginx corriendo sobre la última versión de Debian. Durante la construcción de la imagen, se crea un archivo `index.html` con el texto "Bienvenido a UCU-SO-LABS" y se configura Nginx para servir este archivo como la página de inicio.

## Cómo usar

### Requisitos

* [Docker](https://www.docker.com/get-started) instalado en tu sistema.

### Construir la imagen

1.  Guarda el siguiente contenido en un archivo llamado `Dockerfile` en un directorio de tu elección:

    ```dockerfile
    # Establecer la imagen base
    FROM debian:latest

    # Mantenedor (opcional)
    MAINTAINER ucu-so-labs

    # Actualizar los repositorios e instalar Nginx
    RUN apt-get update && \
        apt-get install -y nginx

    # Eliminar la configuración predeterminada de Nginx
    RUN rm /etc/nginx/sites-available/default
    RUN rm /etc/nginx/sites-enabled/default

    # Crear un directorio para nuestro sitio personalizado
    RUN mkdir -p /var/www/ucu-so-labs

    # Crear el archivo HTML personalizado
    RUN echo "<h1>Bienvenido a UCU-SO-LABS</h1>" > /var/www/ucu-so-labs/index.html

    # Crear un archivo de configuración de Nginx para nuestro sitio
    RUN echo "server { \
        listen 80; \
        server_name localhost; \
        root /var/www/ucu-so-labs; \
        index index.html index.htm; \
        location / { \
            try_files \$uri \$uri/ =404; \
        } \
    }" > /etc/nginx/sites-available/ucu-so-labs.conf

    # Habilitar nuestro sitio personalizado
    RUN ln -s /etc/nginx/sites-available/ucu-so-labs.conf /etc/nginx/sites-enabled/ucu-so-labs.conf

    # Exponer el puerto 80 para acceder al servidor Nginx
    EXPOSE 80

    # Comando para iniciar el servidor Nginx al ejecutar el contenedor
    CMD ["nginx", "-g", "daemon off;"]
    ```

2.  Navega al directorio donde guardaste el `Dockerfile` en tu terminal.

3.  Ejecuta el siguiente comando para construir la imagen Docker:

    ```bash
    docker build -t mi-nginx-ucu .
    ```

### Ejecutar el contenedor

Una vez que la imagen se haya construido exitosamente, puedes ejecutar un contenedor basado en ella con el siguiente comando:

```bash
docker run -d -p 80:80 mi-nginx-ucu