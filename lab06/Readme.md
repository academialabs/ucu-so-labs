# Laboratorio Práctico  
# DevOps Moderno con GitHub Actions y Azure DevOps  
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
- Implementar un CI/CD inicial sobre dos aplicaciones dummy de referencia.

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
   - y Azure DevOps Pipelines (en modalidad comparativa o como desafío extra).
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

El laboratorio se centra en:

- GitHub Actions (flujo principal recomendado).
- Azure DevOps Pipelines (flujo alternativo/comparativo).

Sugerencia docente:

- Obligatorio: implementar el pipeline completo en una de las dos plataformas.
- Recomendado: migrar el mismo flujo a la otra plataforma para comparar tiempos, sintaxis y experiencia de uso.

---

# Aplicaciones Dummy Recomendadas (par de ejemplos)

Para asegurar una experiencia homogénea, se recomienda trabajar con estas dos aplicaciones simples:

1. **Dummy A — Sitio estático**
   - `index.html` con mensaje "Hola Mundo DevOps".
   - Despliegue en NGINX o Apache.
2. **Dummy B — API mínima**
   - NodeJS Express **o** Python Flask con endpoint `/health` retornando `200 OK`.
   - Prueba automática simple al endpoint.

Opcionales:

- Docker básico.
- Empaquetado ZIP/TAR para despliegue por SSH.

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

## Uso de Azure for Students (tier estudiantil)

Si el estudiante posee correo institucional, se recomienda:

1. Activar **Azure for Students**.
2. Crear grupo de recursos específico para el laboratorio (por ejemplo `rg-lab06-devops`).
3. Usar recursos de bajo costo (B1s/B2s) y apagar la VM fuera del horario de trabajo.
   - Sugerencia: activar **Auto-shutdown** diario desde el portal de Azure (VM → Operations → Auto-shutdown).
4. Configurar alertas básicas de consumo para evitar agotar el crédito.
   - Sugerencia: crear alertas de presupuesto en **Cost Management + Billing**.

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

Flujo sugerido (mínimo):

1. Trigger en `push` y `pull_request`.
2. Instalación de dependencias.
3. Ejecución de pruebas básicas.
4. Generación del paquete.

### Empaquetar aplicación

Ejemplos:

- ZIP
- TAR
- Docker Image

### Publicar artifact

Guardar el paquete generado.

Plantillas de referencia:

- GitHub Actions: `.github/workflows/ci.yml`
- Azure DevOps: `azure-pipelines-ci.yml`

---

## Parte 4 — Configurar CD

Automatizar:

- Conexión SSH.
- Copia de archivos.
- Reinicio del servicio.
- Validación de despliegue.

Flujo sugerido (mínimo):

1. Descargar artifact de CI.
2. Copiar al servidor Ubuntu por SSH.
3. Ejecutar script remoto de despliegue.
4. Verificar `/health` o contenido HTML público.

Plantillas de referencia:

- GitHub Actions: `.github/workflows/cd.yml` (job dependiente de CI o `workflow_run`).
- Azure DevOps: `azure-pipelines-cd.yml` (stage de deploy posterior al stage de build/test).

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
