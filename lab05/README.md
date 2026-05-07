# Laboratorio Práctico
# Sistemas Operativos + Bases de Datos

---

# Instalación y Gestión de Bases de Datos en Ubuntu 24.04 usando Azure, Docker y Entornos Locales

---

# Objetivo General

Que el estudiante comprenda cómo los sistemas operativos modernos interactúan con motores de bases de datos relacionales y no relacionales en ambientes reales de infraestructura utilizando:

- Ubuntu Server 24.04 LTS
- Máquinas virtuales en Azure Cloud
- Contenedores Docker
- Instalaciones locales

El laboratorio busca fortalecer habilidades de:

- Administración Linux
- Gestión de servicios
- CLI y automatización
- Redes y seguridad
- Virtualización y contenedores
- Cloud Computing
- Bases de datos SQL y NoSQL
- Sistemas cache y persistencia

---

# Objetivos Específicos

Al finalizar el laboratorio el estudiante será capaz de:

- Instalar y administrar MySQL y/o PostgreSQL (Elegir una opción)
- Comprender diferencias entre SQL y NoSQL
- Implementar MongoDB y Redis
- Utilizar Docker como plataforma de virtualización liviana (Recomendado)
- Administrar servicios Linux mediante systemctl
- Configurar puertos y firewall
- Gestionar usuarios y permisos
- Realizar backups y restores
- Automatizar tareas administrativas
- Documentar técnicamente proyectos reales

---

# Competencias del Curso

- Sistemas Operativos Linux
- Virtualización
- Redes
- Administración de Servicios
- DevOps
- Cloud Computing
- Persistencia de Datos
- Contenedores
- Seguridad Básica

---

# Modalidades del Laboratorio

| Modalidad | Descripción |
|---|---|
| Local | Instalación directamente en computador |
| Docker | Contenedores de bases de datos (recomendado) |
| Azure VM | Ubuntu 24.04 desplegado en Azure |
| Híbrido | Docker ejecutándose dentro de VM Azure |

---

# 1. Pre-Laboratorio

---

# Investigación Inicial

Investigar y resumir:

## Motores de bases de datos más utilizados

- MySQL
- PostgreSQL
- MariaDB
- MongoDB
- Redis
- SQLite
- Cassandra
- Oracle
- SQL Server

---

# Tipos de Bases de Datos

| Tipo | Ejemplo | Uso |
|---|---|---|
| Relacional | MySQL | ERP, banca |
| Relacional | PostgreSQL | Analítica |
| Documental | MongoDB | APIs |
| Cache | Redis | Sesiones |
| Clave-valor | Redis | Tiempo real |
| Grafos | Neo4j | Redes sociales |

---

# Comparación SQL vs NoSQL

| Característica | SQL | NoSQL |
|---|---|---|
| Esquema fijo | Sí | No |
| Relaciones | Fuertes | Flexibles |
| Escalabilidad | Vertical | Horizontal |
| Consistencia | ACID | BASE |
| Ideal para | Transacciones | Escalabilidad |

---

# Casos de Uso Modernos

- Kubernetes
- Microservicios
- APIs
- Cloud Native
- Big Data
- IA y ML
- Tiempo real
- IoT

---

# Requisitos Previos

- Ubuntu 24.04
- Internet estable
- 10 GB libres mínimo
- Docker opcional
- Cuenta Azure opcional

---

# Actualizar el Sistema

```bash
sudo apt update && sudo apt upgrade -y
```

---

# 2. Instalación de Bases de Datos Relacionales

---

# MySQL

## Instalación

```bash
sudo apt install mysql-server -y
```

---

## Verificar Servicio

```bash
sudo systemctl status mysql
```

---

## Habilitar inicio automático

```bash
sudo systemctl enable mysql
```

---

## Instalación Segura

```bash
sudo mysql_secure_installation
```

Investigar:

- Password policy
- Eliminación usuarios anónimos
- Deshabilitar root remoto

---

## Acceder al CLI

```bash
sudo mysql -u root -p
```

---

# PostgreSQL

## Instalación

```bash
sudo apt install postgresql postgresql-contrib -y
```

---

## Verificar Servicio

```bash
sudo systemctl status postgresql
```

---

## Ingresar a PostgreSQL

```bash
sudo -u postgres psql
```

---

# 3. Administración Linux y Servicios

---

# Comandos systemctl

```bash
systemctl status mysql
systemctl restart mysql
systemctl stop mysql
systemctl start mysql
```

---

# Ver procesos activos

```bash
ps aux | grep mysql
```

---

# Ver puertos abiertos

```bash
sudo ss -tulpn
```

---

# Monitoreo

```bash
top
htop
free -m
df -h
```

---

# 4. Azure Cloud VM

---

# Objetivo

Comprender infraestructura cloud básica.

---

# Crear VM Ubuntu 24.04

Configuración sugerida:

| Parámetro | Valor |
|---|---|
| SO | Ubuntu 24.04 |
| Tamaño | B1s/B2s |
| Disco | SSD |
| Región | East US |
| Auth | SSH |

---

# Configurar Networking

Abrir puertos:

| Servicio | Puerto |
|---|---|
| SSH | 22 |
| MySQL | 3306 |
| PostgreSQL | 5432 |
| MongoDB | 27017 |
| Redis | 6379 |

---

# Configurar Firewall Ubuntu

```bash
sudo ufw allow 3306
sudo ufw allow 5432
sudo ufw allow 27017
sudo ufw allow 6379
```

---

# 5. Docker y Contenedores

---

# Instalar Docker

```bash
sudo apt install docker.io -y
```

---

# Habilitar Docker

```bash
sudo systemctl enable docker
sudo systemctl start docker
```

---

# Verificar Docker

```bash
docker ps
```

---

# MySQL en Docker

```bash
docker run -d \
--name mysql-lab \
-e MYSQL_ROOT_PASSWORD=admin123 \
-p 3306:3306 \
mysql:8
```

---

# PostgreSQL en Docker

```bash
docker run -d \
--name postgres-lab \
-e POSTGRES_PASSWORD=admin123 \
-p 5432:5432 \
postgres:16
```

---

# MongoDB en Docker

```bash
docker run -d \
--name mongodb-lab \
-p 27017:27017 \
mongo:7
```

---

# Redis en Docker

```bash
docker run -d \
--name redis-lab \
-p 6379:6379 \
redis:7
```

---

# Ver logs

```bash
docker logs mysql-lab
docker logs postgres-lab
```

---

# Ver contenedores

```bash
docker ps
```

---

# 6. SQL Básico — MySQL/PostgreSQL

---

# Crear Base de Datos

```sql
CREATE DATABASE ejemplo;
```

---

# Crear Tabla

```sql
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(100)
);
```

---

# Insertar Datos

```sql
INSERT INTO usuarios VALUES
(1,'Juan','juan@test.com'),
(2,'Maria','maria@test.com'),
(3,'Pedro','pedro@test.com');
```

---

# Consultar Datos

```sql
SELECT * FROM usuarios;
```

---

# Actualizar Datos

```sql
UPDATE usuarios
SET nombre='Juan Carlos'
WHERE id=1;
```

---

# Eliminar Datos

```sql
DELETE FROM usuarios
WHERE id=3;
```

---

# 7. MongoDB — NoSQL

---

# Acceder a MongoDB

```bash
docker exec -it mongodb-lab mongosh
```

---

# Crear Base de Datos

```javascript
use laboratorio
```

---

# Insertar Documento

```javascript
db.usuarios.insertOne({
  nombre: "Juan",
  edad: 25,
  ciudad: "Montevideo"
})
```

---

# Consultar Documentos

```javascript
db.usuarios.find()
```

---

# Filtrar Datos

```javascript
db.usuarios.find({
  edad: { $gt: 20 }
})
```

---

# Actualizar Documento

```javascript
db.usuarios.updateOne(
  { nombre: "Juan" },
  {
    $set: {
      ciudad: "Maldonado"
    }
  }
)
```

---

# Eliminar Documento

```javascript
db.usuarios.deleteOne({
  nombre: "Juan"
})
```

---

# 8. Redis — Base de Datos Cache

---

# Acceder al CLI Redis

```bash
docker exec -it redis-lab redis-cli
```

---

# Crear Clave

```bash
SET usuario "Juan"
```

---

# Obtener Valor

```bash
GET usuario
```

---

# Crear Contador

```bash
SET visitas 0
```

---

# Incrementar

```bash
INCR visitas
```

---

# Expiración

```bash
SET sesion "activa"
EXPIRE sesion 60
```

---

# Ver TTL

```bash
TTL sesion
```

---

# Listas

```bash
LPUSH tareas "backup"
LPUSH tareas "deploy"
```

---

# Mostrar Lista

```bash
LRANGE tareas 0 -1
```

---

# Hashes

```bash
HSET usuario:1 nombre "Juan"
HSET usuario:1 edad 25
```

---

# Consultar Hash

```bash
HGETALL usuario:1
```

---

# 9. Seguridad y Usuarios

---

# Crear Usuario MySQL

```sql
CREATE USER 'appuser'@'%' IDENTIFIED BY 'Password123!';
GRANT ALL PRIVILEGES ON ejemplo.* TO 'appuser'@'%';
FLUSH PRIVILEGES;
```

---

# Crear Usuario PostgreSQL

```sql
CREATE USER appuser WITH PASSWORD 'Password123!';
GRANT ALL PRIVILEGES ON DATABASE ejemplo TO appuser;
```

---

# 10. Backup y Restore

---

# MySQL Backup

```bash
mysqldump -u root -p ejemplo > backup.sql
```

---

# MySQL Restore

```bash
mysql -u root -p ejemplo < backup.sql
```

---

# PostgreSQL Backup

```bash
pg_dump ejemplo > backup.sql
```

---

# PostgreSQL Restore

```bash
psql ejemplo < backup.sql
```

---

# 11. Automatización Bash

---

# Crear Script

```bash
nano backup.sh
```

---

# Ejemplo

```bash
#!/bin/bash

DATE=$(date +%F)

mysqldump -u root -p ejemplo > backup-$DATE.sql

tar -czf backup-$DATE.tar.gz backup-$DATE.sql

echo "Backup completado"
```

---

# Dar permisos

```bash
chmod +x backup.sh
```

---

# Ejecutar

```bash
./backup.sh
```

---

# 12. Challenges del Laboratorio

---

# Challenge 1 — Administración Linux

Investigar:

- RAM utilizada
- CPU utilizada
- Servicios activos
- Procesos DB

Comandos:

```bash
top
htop
ps aux
free -m
```

---

# Challenge 2 — Networking

Identificar:

- IP privada
- IP pública
- Puertos abiertos
- Conectividad remota

---

# Challenge 3 — Docker

Responder:

- Diferencia entre VM y contenedor
- Qué proceso mantiene vivo el contenedor
- Ventajas Docker

---

# Challenge 4 — SQL

Realizar:

- INSERT
- UPDATE
- DELETE
- SELECT

---

# Challenge 5 — MongoDB

Realizar CRUD completo.

---

# Challenge 6 — Redis

Simular:

- Cache temporal
- Contador visitas
- Sesiones

---

# Challenge 7 — DevOps

Crear estructura GitHub:

```text
README.md
/scripts
/sql
/docker
/evidencias
```

---

# 13. Evidencias Requeridas

Capturas mínimas:

- VM Azure
- Docker funcionando
- Servicios activos
- Bases creadas
- CRUD SQL
- CRUD MongoDB
- Redis funcionando
- Firewall configurado
- Usuarios creados
- Backups

---

# 14. Informe Final

Formato:

- README.md
- PDF
- DOCX

---

# Debe incluir

## Introducción

Objetivos y alcance.

---

## Desarrollo

Pasos ejecutados.

---

## Evidencias

Capturas comentadas.

---

## Problemas encontrados

Errores y soluciones.

---

## Conclusiones

Responder:

- Diferencias SQL vs NoSQL
- Diferencias VM vs Docker
- Importancia Redis
- Impacto cloud computing
- Seguridad y backups

---

# 15. Bonus (Opcional)

Implementar:

- Docker Compose
- pgAdmin
- Adminer
- Backup automático
- Cron jobs
- Kubernetes investigación

---

# Resultado Esperado

El estudiante podrá:

- Administrar Linux
- Operar servicios
- Utilizar Docker
- Implementar SQL y NoSQL
- Configurar seguridad básica
- Automatizar tareas
- Comprender cloud computing
- Documentar proyectos técnicos
