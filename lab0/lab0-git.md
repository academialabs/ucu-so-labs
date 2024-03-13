# Laboratorio 0:
- Básico de Git y GitHub 101

## Objetivo:
- El objetivo de este laboratorio es introducir a los estudiantes en el uso básico de Git y GitHub. Los estudiantes aprenderán los comandos de Git más comunes y practicarán el trabajo con repositorios remotos en GitHub.

## Pre Laboratorio:
Investigar los siguientes comandos de Git:

1. `git init`: Inicializa un nuevo repositorio Git.
2. `git add`: Agrega cambios al área de preparación (staging area).
3. `git commit`: Registra los cambios en el repositorio.
4. `git status`: Muestra el estado actual del repositorio.
5. `git log`: Muestra el historial de commits.
6. `git branch`: Lista, crea o elimina branches.
7. `git checkout`: Cambia entre branches o restaura archivos.
8. `git merge`: Fusiona cambios de un branch a otro.

## Laboratorio:

1. **Inicializar un Repositorio Local:**
   - Usa el comando `git init` para inicializar un nuevo repositorio en un directorio vacío.

2. **Agregar y Confirmar Cambios:**
   - Crea un archivo de texto en el directorio y añade contenido.
   - Utiliza `git add .` para agregar todos los cambios al área de preparación.
   - Realiza un commit con `git commit -m "Mensaje de commit"`.

3. **Explorar el Historial de Commits:**
   - Utiliza `git log` para ver el historial de commits y los detalles de cada uno.

4. **Trabajar con Branches:**
   - Crea un nuevo branch con `git branch nombre_branch`.
   - Cambia al nuevo branch con `git checkout nombre_branch`.
   - Realiza algunos cambios en el nuevo branch y commitea los cambios.
   - Vuelve al branch principal con `git checkout master`.
   - Fusiona los cambios del nuevo branch a master usando `git merge nombre_branch`.

## Post Laboratorio:

1. **Crear una Cuenta en GitHub:**
   - Investigar cómo crear una cuenta en GitHub si aún no tienes una.

2. **Crear un Repositorio Remoto:**
   - Crear un nuevo repositorio en GitHub.
   - Sigue las instrucciones proporcionadas por GitHub para agregar el repositorio remoto a tu repositorio local.

3. **Subir Cambios al Repositorio Remoto:**
   - Utiliza `git push` para subir tus cambios locales al repositorio remoto en GitHub.

4. **Explorar Interfaz de GitHub:**
   - Explora la interfaz de usuario de GitHub para familiarizarte con las diferentes funciones y características.

## Notas:
- Asegúrate de seguir las instrucciones paso a paso y de comprender el propósito de cada comando y acción realizada en el laboratorio. No dudes en consultar la documentación de Git y GitHub si encuentras alguna dificultad.
