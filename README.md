# ASEF: Agentic Software Engineering Framework
**Manual de Ingeniería de Software para la Era de los Agentes**

## 1. Visión General
ASEF es un marco de trabajo (framework) diseñado para orquestar la colaboración entre humanos y agentes de Inteligencia Artificial. Su objetivo es transformar ideas ambiguas en software de alta precisión, garantizando seguridad, eficiencia económica y coherencia arquitectónica.

## 2. Los Pilares Técnicos
* **Agentic Workflows:** El trabajo se divide en fases de pensamiento, mapeo, ejecución y auditoría.
* **Architecture-as-Code (AaC):** La arquitectura reside en archivos Markdown y Mermaid, no solo en la memoria de los agentes.
* **AI-Native Org:** El repositorio está estructurado para que los agentes encuentren contexto relevante con el mínimo consumo de tokens.

---

## 3. El Ciclo de Vida A-B-C-D-E

### Fase A: Destilación (Arquitectura y Comportamiento)
- **Actor:** IA de Alto Razonamiento (ej. Gemini 1.5 Pro).
- **Entregable:** Un "Package de Verdad" que contiene el **ADR** (justificación técnica) y los **Escenarios Gherkin** (comportamiento).
- **Regla de Oro:** Ningún código se escribe sin un contrato de Fase A aprobado.

### Fase B: Contextualización (Mapeo e Infra)
- **Actor:** IA de Procesamiento Rápido (ej. Gemini 1.5 Flash).
- **Entregable:** Diagramas Mermaid y plantillas de Infraestructura como Código (IaC).
- **Propósito:** Preparar el entorno y la visión sistémica.

### Fase C: Ejecución (TDD Agéntico)
- **Actor:** Agentes de IDE o modelos locales.
- **Flujo:** Rojo-Verde-Refactor basado en los escenarios Gherkin.
- **Optimización:** Uso de modelos económicos y poda de contexto para ahorrar tokens.

### Fase D: Auditoría y Centinela (Seguridad y Calidad)
- **Actor:** Agente Centinela (DevSecOps).
- **Misión:** Validar que el código cumple con el ADR y las políticas de seguridad.
- **Bucle de Retroalimentación:** Si hay fallos de diseño, el flujo vuelve a la Fase A.

### Fase E: Estabilización y Telemetría
- **Acción:** Ejecución de benchmarks locales y proyecciones de costo.
- **Salida:** Reporte de rendimiento y validación de infraestructura.

---

## 4. Gobernanza Humana (Checkpoints)
El humano actúa como el Director de Orquesta en tres puntos críticos:
1.  **Aprobación de ADR:** Antes de iniciar la construcción.
2.  **Aprobación de Seguridad:** Validación de nuevas dependencias sugeridas por la IA.
3.  **Aprobación de Merge:** Firma final tras el reporte de la Fase D.

---

## 5. Eficiencia Económica (Tokenomics)
- **Model Tiering:** Modelos potentes para planear, modelos ligeros para ejecutar.
- **Stop-Loss:** Límite de 3 intentos en TDD antes de escalar a revisión humana.
- **Métrica $E_t$:** Relación de líneas de código versus tokens consumidos.

---

## 6. Seguridad Agéntica
El **Agente Centinela** protege el sistema mediante:
- Bloqueo en tiempo real de secretos expuestos.
- Defensa contra ataques de "Prompt Injection".
- Auditoría de cadena de suministro (Supply Chain).

---
© 2025 - Framework ASEF por Felipe Marin
