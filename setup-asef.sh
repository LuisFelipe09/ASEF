#!/bin/bash

# Crear estructura de carpetas
mkdir -p docs/adr templates rules packages

# Crear archivos base
touch docs/playbook.md docs/templates.md docs/security-manifesto.md docs/business-metrics.qmd
touch templates/adr-gherkin.md templates/agent-role.json templates/sentinel-policies.yaml
touch rules/global-memory.md

echo "✅ Estructura del Framework ASEF inicializada correctamente."
echo "Siguiente paso: Completa los archivos con el contenido del Manual Maestro."
