# Laboratorio Práctico  
# DevOps Moderno con GitHub Actions o Azure DevOps  
## Automatización Real de Empaquetado, Pruebas y Despliegue en Azure Cloud

---

# Descripción General

Este laboratorio tiene como objetivo que los estudiantes experimenten un escenario DevOps cercano a la vida real, utilizando herramientas modernas de automatización como GitHub Actions o Azure DevOps.

La práctica busca que los estudiantes comprendan cómo automatizar el ciclo completo de integración y entrega continua (CI/CD), desde el código fuente hasta el despliegue automatizado en un servidor Linux en la nube.

La idea principal es que cada estudiante o grupo pueda construir una solución funcional en pocas horas, similar a un entorno real usado actualmente por equipos DevOps.

---

# Objetivos del Laboratorio

Al finalizar esta actividad, el estudiante será capaz de:

- Comprender los fundamentos de DevOps y automatización CI/CD.
- Utilizar GitHub Actions o Azure DevOps Pipelines.
- Automatizar pruebas, empaquetado y despliegues.
- Desplegar aplicaciones en una máquina virtual Ubuntu en Azure.
- Integrar control de versiones con pipelines automatizados.
- Aplicar buenas prácticas básicas de infraestructura y automatización.
- Documentar técnicamente un proyecto DevOps real.

---

# Escenario de Vida Real (Reto Académico)

## Contexto Empresarial

Una pequeña empresa posee un portal web institucional desarrollado en HTML, NodeJS o Python Flask.

Actualmente:

- Los cambios se realizan manualmente.
- El despliegue se hace conectándose por SSH al servidor.
- No existen pruebas automáticas.
- No hay control formal de despliegues.

La empresa desea modernizar su flujo de trabajo implementando automatización DevOps.

---

# Reto del Laboratorio

El estudiante deberá:

1. Crear un repositorio Git.
2. Configurar un pipeline CI/CD usando:
   - GitHub Actions
   - o Azure DevOps Pipelines.
3. Automatizar:
   - Validación del código.
   - Empaquetado de la aplicación.
   - Ejecución de pruebas básicas.
   - Despliegue automático.
4. Desplegar la aplicación en:
   - Una VM Ubuntu en Azure.
5. Exponer el servicio al mundo mediante:
   - Puerto 80 o 8080.
6. Documentar todo el proceso en Markdown.

---

# Arquitectura Simplificada

```text
Developer
   ↓ git push
Repositorio GitHub / Azure Repos
   ↓
Pipeline CI/CD
   ↓
Pruebas automáticas
   ↓
Empaquetado
   ↓
Despliegue automático
   ↓
VM Ubuntu en Azure
   ↓
Aplicación disponible públicamente
```

---

# Tecnologías Permitidas

## Plataformas DevOps

El estudiante deberá escoger UNA:

- GitHub Actions
- Azure DevOps Pipelines

---

# Aplicaciones Permitidas

Puede utilizar cualquiera de estas opciones simples:

- Página HTML estática.
- NodeJS Express básico.
- Python Flask.
- NGINX sirviendo contenido estático.
- Apache Web Server.
- Docker básico opcional.

---

# Infraestructura Recomendada

## Azure VM Ubuntu

Recomendación:

- Ubuntu 24.04 LTS
- Tamaño pequeño B1s o B2s
- Acceso SSH
- IP pública
- NSG permitiendo:
  - 22
  - 80
  - 8080

---

# PRE-LAB (Investigación y Spike Técnico)

## Parte 1 — Introducción a DevOps

Investigar:

- ¿Qué es DevOps?
- Diferencia entre CI y CD.
- Beneficios de automatización.
- ¿Qué es un pipeline?
- ¿Qué es Infrastructure as Code?
- ¿Qué es un despliegue automatizado?

---

## Parte 2 — Investigación de Plataformas

| Plataforma | Características |
|---|---|
| GitHub Actions | CI/CD integrado con GitHub |
| Azure DevOps | Pipelines empresariales y Boards |
| GitLab CI/CD | Integración DevOps completa |
| Bitbucket Pipelines | Integración Atlassian |

---

## Parte 3 — Investigación Técnica Base

El estudiante deberá investigar:

- ¿Qué es YAML?
- ¿Qué es un runner o agente?
- ¿Qué es un workflow?
- ¿Qué es un artifact?
- ¿Qué es SSH?
- ¿Qué es un deployment?
- ¿Qué es un secreto o variable segura?

---

# Desarrollo del Laboratorio

## Parte 1 — Crear Repositorio

```text
app/
README.md
pipeline/
```

---

## Parte 2 — Crear Aplicación Base

La aplicación deberá responder:

```text
Hola Mundo DevOps
```

---

## Parte 3 — Configurar CI

### Validar código

Ejemplos:

- lint
- syntax check
- npm test
- python test

### Empaquetar aplicación

Ejemplos:

- ZIP
- TAR
- Docker Image

### Publicar artifact

Guardar el paquete generado.

---

## Parte 4 — Configurar CD

Automatizar:

- Conexión SSH.
- Copia de archivos.
- Reinicio del servicio.
- Validación de despliegue.

---

# POST-LAB

## Reflexión Técnica

Responder:

1. ¿Qué ventajas ofrece DevOps frente al despliegue manual?
2. ¿Qué problemas podrían ocurrir sin automatización?
3. ¿Qué parte del pipeline fue más compleja?
4. ¿Qué mejorarían en un ambiente empresarial real?
5. ¿Qué riesgos de seguridad identificaron?
6. ¿Cómo escalarían esta solución?

---

# Entregables

## Repositorio GitHub

Debe contener:

- Código fuente.
- Pipeline YAML.
- Scripts.
- Evidencias.

## Informe Markdown

Archivo:

```text
INFORME.md
```

Incluyendo:

- Introducción.
- Desarrollo.
- Problemas encontrados.
- Soluciones.
- Conclusiones.
- URL pública del servicio.

---

# Criterios de Evaluación

| Criterio | Porcentaje |
|---|---|
| Investigación Pre-Lab | 15% |
| Configuración Git | 10% |
| Pipeline CI | 20% |
| Automatización CD | 20% |
| Despliegue funcional | 15% |
| Documentación | 10% |
| Reflexión técnica | 10% |

---

# Resultado Esperado

```text
Código → Pipeline → Pruebas → Artifact → Deploy → Producción
```

El estudiante obtendrá experiencia práctica real en automatización, integración continua y despliegue continuo sobre infraestructura cloud Linux.
