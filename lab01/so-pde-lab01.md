## **Laboratorio 1: Introducción a Git y GitHub**

### **Objetivo**
El objetivo de este laboratorio es introducir a los estudiantes en el uso básico de Git y GitHub. Los estudiantes aprenderán los comandos esenciales de Git, trabajarán con repositorios locales y remotos, y practicarán el flujo de trabajo básico de control de versiones.

---

### **Pre-Laboratorio**
Antes de asistir a la clase, los estudiantes deben realizar las siguientes actividades:

1. **Crear una cuenta en GitHub**
   - Si no tienen una cuenta, deben registrarse en una de estas plataformas.
   - Explorar la interfaz de la plataforma elegida y familiarizarse con sus características básicas.

2. **Investigar los siguientes conceptos y comandos de Git:**
   - **Conceptos básicos:**
     - Repositorio local vs remoto.
     - Área de preparación (staging area).
     - Commit, branch y merge.
   - **Comandos básicos:**
     - `git init`: Inicializa un nuevo repositorio Git.
     - `git add`: Agrega cambios al área de preparación.
     - `git commit`: Registra los cambios en el repositorio.
     - `git status`: Muestra el estado actual del repositorio.
     - `git log`: Muestra el historial de commits.
     - `git branch`: Lista, crea o elimina branches.
     - `git checkout`: Cambia entre branches o restaura archivos.
     - `git merge`: Fusiona cambios de un branch a otro.
     - `git push`: Sube cambios al repositorio remoto.
     - `git pull`: Obtiene cambios del repositorio remoto.

3. **Instalar Git en su computadora:**
   - Descargar e instalar Git desde [git-scm.com](https://git-scm.com/).
   - Configurar Git con su nombre y correo electrónico:
     ```bash
     git config --global user.name "Tu Nombre"
     git config --global user.email "tu@email.com"
     ```

4. **Leer un tutorial básico de Git:**
   - Recomendar un recurso como [ProGit](https://git-scm.com/book/es/v2) o la documentación oficial de Git.

---

### **Desarrollo en Clase**

#### **1. Inicializar un Repositorio Local**
- Crear una carpeta en su computadora para el laboratorio.
- Abrir una terminal o línea de comandos y navegar a la carpeta creada.
- Inicializar un repositorio Git:
  ```bash
  git init
  ```

#### **2. Agregar y Confirmar Cambios**
- Crear un archivo de texto llamado `README.md` en la carpeta.
- Agregar contenido al archivo, por ejemplo:
  ```markdown
  # Laboratorio de Git y GitHub
  Este es un repositorio de prueba para el laboratorio de Sistemas Operativos.
  ```
- Agregar los cambios al área de preparación:
  ```bash
  git add README.md
  ```
- Realizar un commit:
  ```bash
  git commit -m "Primer commit: agregado README.md"
  ```

#### **3. Explorar el Historial de Commits**
- Ver el historial de commits:
  ```bash
  git log
  ```

#### **4. Trabajar con Branches**
- Crear un nuevo branch llamado `develop`:
  ```bash
  git branch develop
  ```
- Cambiar al branch `develop`:
  ```bash
  git checkout develop
  ```
- Realizar cambios en el archivo `README.md` y hacer un commit:
  ```bash
  git add README.md
  git commit -m "Agregada descripción en develop"
  ```
- Volver al branch principal (`main` o `master`):
  ```bash
  git checkout main
  ```
- Fusionar los cambios de `develop` en `main`:
  ```bash
  git merge develop
  ```

#### **5. Trabajar con un Repositorio Remoto**
- Crear un repositorio en GitHub (o la plataforma elegida).
- Agregar el repositorio remoto al repositorio local:
  ```bash
  git remote add origin <URL_del_repositorio>
  ```
- Subir los cambios al repositorio remoto:
  ```bash
  git push -u origin main
  ```

---

### **Post-Laboratorio**

#### **1. Informe de Post-Laboratorio**
Los estudiantes deben entregar un informe en formato Markdown (`.md`) o Word (`.docx`) que incluya:

1. **Introducción:**
   - Breve explicación de Git y GitHub.
   - Objetivo del laboratorio.

2. **Desarrollo:**
   - Descripción paso a paso de lo realizado en clase.
   - Capturas de pantalla de los comandos ejecutados y los resultados obtenidos.
   - Explicación de los comandos utilizados.

3. **Conclusiones:**
   - Qué aprendieron durante el laboratorio.
   - Dificultades encontradas y cómo las resolvieron.

4. **Anexos:**
   - Enlace al repositorio remoto en GitHub/GitLab/Bitbucket.
