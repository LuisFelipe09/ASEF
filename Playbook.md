# Playbook Operativo de ASEF
**Guía de ejecución diaria para el desarrollo impulsado por agentes**

Este documento describe el flujo de trabajo estándar para implementar cualquier nueva funcionalidad, corrección o mejora dentro del ecosistema ASEF.

---

## 1. Inicio de una Tarea (Fase A: Destilación)
Antes de tocar el código, el **Arquitecto (IA)** debe generar el contrato de trabajo.

**Proceso:**
1.  **Entrada:** El humano proporciona el requerimiento (ej: "Crear un sistema de cupones de descuento").
2.  **Consulta de Memoria:** La IA debe leer el archivo `rules/global-memory.md` para asegurar coherencia con decisiones pasadas.
3.  **Generación del "Package de Verdad":** La IA genera un nuevo archivo en `docs/adr/` siguiendo el template oficial.
    * *Debe incluir:* Justificación técnica, impacto en otros módulos y **Escenarios Gherkin**.
4.  **Validación Humana:** El flujo se detiene. El humano revisa el ADR y lo marca como `Estado: Aceptado`.

---

## 2. Preparación del Entorno (Fase B: Contextualización)
Una vez aceptado el ADR, la IA de procesamiento rápido prepara el terreno.

**Proceso:**
1.  **Mapeo Visual:** La IA genera o actualiza los diagramas Mermaid en la documentación.
2.  **Draft de Infraestructura:** Si la tarea requiere nuevos recursos (DB, API endpoints), la IA genera los archivos `.yaml` o `.tf` iniciales.
3.  **Sincronización:** Se actualiza el mapa del sitio en Quarto/MkDocs para reflejar la nueva arquitectura.

---

## 3. Implementación con TDD (Fase C: Ejecución)
El Agente Constructor recibe el "Package de Verdad" y opera bajo el protocolo de eficiencia de tokens.

**Proceso:**
1.  **Paso Rojo (Test):** El agente escribe los tests unitarios basados en los escenarios Gherkin. Ejecuta y confirma que fallan.
2.  **Paso Verde (Código):** El agente escribe la implementación mínima.
3.  **Ciclo de Optimización:**
    * Si falla el test, el agente tiene **3 intentos** para corregir usando modelos económicos (Flash/Local).
    * Si al 3er intento no pasa, el agente **detiene la ejecución** y reporta el bloqueo. No se gastan más tokens.
4.  **Refactor:** Una vez en verde, se optimiza el código bajo supervisión de linters locales.

---

## 4. Auditoría de Seguridad (Fase D: El Centinela)
El Agente Centinela entra en acción antes de cualquier integración.

**Proceso:**
1.  **Escaneo de Código:** Busca patrones inseguros, inyecciones de prompts o secretos expuestos.
2.  **Auditoría de Dependencias:** Si el Agente Constructor instaló una nueva librería, el Centinela verifica su integridad.
3.  **Firma de Calidad:** El Centinela genera un reporte:
    * *Check:* ¿Cumple con el ADR?
    * *Check:* ¿Pasa los tests Gherkin?
    * *Check:* ¿Es seguro?

---

## 5. Cierre y Telemetría (Fase E: Estabilización)
Validación final antes del despliegue.

**Proceso:**
1.  **Benchmark:** Ejecución de pruebas de rendimiento locales.
2.  **Proyección de Costos:** Quarto renderiza el dashboard de impacto económico.
3.  **Aprobación de Vuelo:** El humano revisa el reporte final de la Fase D y E, y realiza el Merge a la rama principal.

---

## 6. Protocolo de Resolución de Conflictos
* **Si la IA alucina:** Reiniciar el contexto, limpiar el `cache` de la IA y reducir la temperatura del modelo.
* **Si el test no pasa:** Verificar si el Gherkin es demasiado complejo. Si es así, dividir la tarea en dos ADRs más pequeños.
* **Si hay error de seguridad:** El Centinela bloquea el proceso. El humano debe mediar y decidir si es un falso positivo o un riesgo real.

---
