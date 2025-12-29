# ADR-001: Microservicio de Gestión de Usuarios
**Estado:** Aceptado
**Fecha:** 2023-10-27

## 1. Contexto
Necesitamos un sistema básico para crear, leer, actualizar y eliminar (CRUD) usuarios. Este es un componente fundacional para cualquier aplicación.
El objetivo es demostrar el flujo ASEF en una tarea simple pero completa.

## 2. Decisión
Implementaremos una API REST utilizando **Python (FastAPI)**.
- **Base de Datos:** SQLite (para simplicidad del ejemplo).
- **Testing:** Pytest + Gherkin (pytest-bdd).

## 3. Justificación Técnica
* **FastAPI:** Alto rendimiento, validación automática con Pydantic y documentación automática (Swagger). Ideal para agentes por su tipado fuerte.
* **SQLite:** Cero configuración, suficiente para este ejemplo de "Juguete".

## 4. Escenarios Gherkin (Contrato de Comportamiento)
Este ADR está vinculado a los tests en `../../features/gestion_usuarios.feature`.

## 5. Seguridad (Centinela)
* Los inputs deben ser sanitizados por Pydantic.
* No se debe loguear información sensible (PII).
