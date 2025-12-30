#!/bin/bash

# setup-asef.sh: Inicializador de estructura ASEF
# Crea la jerarquía de carpetas estándar para un nuevo proyecto.

echo "🏗️  Inicializando estructura ASEF..."

# 1. Documentación y Arquitectura
mkdir -p docs/adr
mkdir -p docs/diagrams
mkdir -p docs/meta-adr
mkdir -p docs/manuals

# 2. Configuración y Reglas
mkdir -p rules
mkdir -p templates

# 3. Código y Pruebas (Estructura sugerida)
mkdir -p src
mkdir -p tests/features

# Crear archivos placeholder si no existen
touch docs/playbook.md
touch docs/security-manifesto.md
touch docs/business-metrics.md
touch docs/manual-asef.md
touch rules/global-memory.md

# Plantillas base
touch templates/adr-gherkin.md
touch templates/agent-role.json
touch templates/sentinel-policies.yaml

echo "✅ Estructura ASEF creada con éxito."
echo ""
echo "📂 Carpetas creadas:"
echo "   /docs/adr         -> Guarda tus decisiones de arquitectura aquí"
echo "   /docs/diagrams    -> Archivos fuente .mmd (Mermaid)"
echo "   /docs/meta-adr    -> Evolución del propio framework"
echo "   /tests/features   -> Escenarios Gherkin (.feature)"
echo ""
echo "🚀 ¡Listo para empezar la Fase A!"
