-- ============================================================
-- Sports Business Dashboard — Liga Sudamericana de Fútbol
-- modulo1_exploracion.sql | Queries de exploración básica
-- Módulo 1: Introduction to SQL — DataCamp
-- ============================================================
-- Contexto: Simulación del rol de Data Analyst para la LSF.
-- Objetivo: Exploración inicial del modelo de datos usando
-- SELECT, FROM, ORDER BY, LIMIT, DISTINCT y AS.
-- Todas las queries responden preguntas de negocio concretas.
-- ============================================================

-- ------------------------------------------------------------
-- EJERCICIO 1
-- Pregunta de negocio: ¿Qué equipo tiene mayor capacidad
-- de estadio? Ordenar todos los equipos de mayor a menor.
-- Conceptos: SELECT columnas específicas, FROM, ORDER BY DESC
-- Nota: Se usan columnas específicas (no SELECT *) porque
-- en producción siempre es mejor seleccionar solo lo necesario.
-- ------------------------------------------------------------
SELECT team_name, city, stadium_capacity
FROM teams
ORDER BY stadium_capacity DESC;

-- Insight: Club Andino (Santiago) tiene el estadio más grande
-- con 55.000 plazas — 22% más que el segundo lugar.
-- Ventaja competitiva en ingresos por ticket y patrocinios premium.

-- ------------------------------------------------------------
-- EJERCICIO 2
-- Pregunta de negocio: ¿Cuántos y cuáles son los tipos
-- de ingreso que registra la liga?
-- Conceptos: SELECT DISTINCT
-- ------------------------------------------------------------
SELECT DISTINCT revenue_type
FROM revenue;

-- Insight: La liga tiene 4 fuentes de ingreso — Tickets,
-- Sponsors, Merchandise y TV. Base para analizar cuál aporta
-- más y cuál tiene mayor potencial de crecimiento. (Módulo 2)

-- ------------------------------------------------------------
-- EJERCICIO 3
-- Pregunta de negocio: ¿Cuáles son los 3 patrocinadores
-- más valiosos y en qué industrias operan?
-- Conceptos: SELECT columnas específicas, ORDER BY DESC, LIMIT
-- ------------------------------------------------------------
SELECT sponsor_name, industry, contract_value
FROM sponsors
ORDER BY contract_value DESC
LIMIT 3;

-- Insight: Top 3 sponsors son de Telecomunicaciones, Tecnología
-- y Finanzas. MobileNet lidera con $320K — 28% más que el
-- segundo. Orienta la estrategia comercial hacia esos sectores.

-- ------------------------------------------------------------
-- EJERCICIO 4
-- Pregunta de negocio: ¿Qué sponsors tiene la liga y
-- cuáles son de equipo vs de liga completa?
-- Conceptos: SELECT columnas específicas, ORDER BY DESC
-- ------------------------------------------------------------
SELECT sponsor_name, industry, contract_value, team_id
FROM sponsors
ORDER BY contract_value DESC;

-- Insight: MobileNet (team_id = NULL) es sponsor de la liga
-- completa — mayor exposición, mayor valor ($320K).
-- Los sponsors de equipo tienen visibilidad limitada a un club.
-- NULL aquí no es un error — es información de negocio válida.

-- ------------------------------------------------------------
-- EJERCICIO 5
-- Pregunta de negocio: ¿En qué ciudades opera la liga?
-- Conceptos: SELECT DISTINCT, AS
-- ------------------------------------------------------------
SELECT DISTINCT city AS ciudad
FROM teams;

-- Insight: 5 ciudades en 5 países distintos — Buenos Aires,
-- Montevideo, Santiago, Lima y Bogotá. Relevante para
-- estrategias de expansión y contratos regionales de TV.

-- ------------------------------------------------------------
-- EJERCICIO 6
-- Pregunta de negocio: ¿Cuáles son los 5 partidos con
-- mayor asistencia registrada?
-- Conceptos: SELECT columnas específicas, ORDER BY DESC, LIMIT
-- ------------------------------------------------------------
SELECT match_id, match_date, attendance
FROM matches
ORDER BY attendance DESC
LIMIT 5;

-- Insight: Los partidos con mayor asistencia pueden cruzarse
-- con ingresos de tickets para medir el impacto económico real.
-- Eso requiere JOIN entre matches y tickets — se resuelve en
-- Módulo 2.

-- ------------------------------------------------------------
-- EJERCICIO 7 — Vista anticipada al Módulo 2
-- Pregunta de negocio: ¿Cómo se distribuyen los ingresos
-- por equipo y tipo?
-- Nota: La respuesta completa requiere GROUP BY + SUM (Módulo 2).
-- Por ahora exploramos los datos sin agrupar para entender
-- la estructura antes de agregar.
-- ------------------------------------------------------------
SELECT team_id, revenue_type, amount
FROM revenue
ORDER BY team_id, amount DESC;

-- Próximo paso: cuando tengamos GROUP BY vamos a poder ver
-- el ingreso TOTAL por equipo con una sola query.
-- Eso es lo que realmente necesita un Director de Operaciones.

-- ============================================================
-- RESUMEN DE KEYWORDS USADAS EN ESTE MÓDULO
-- SELECT    — elegir qué columnas mostrar
-- FROM      — especificar la tabla fuente
-- ORDER BY  — ordenar resultados (ASC / DESC)
-- LIMIT     — restringir cantidad de filas
-- DISTINCT  — eliminar valores duplicados
-- AS        — renombrar columnas en el resultado
-- ============================================================
```

---

Pegalo en el archivo `queries/modulo1_exploracion.sql`, mensaje del commit:
```
Add Module 1 exploratory queries with business insights
