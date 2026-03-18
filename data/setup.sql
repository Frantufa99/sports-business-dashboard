-- ============================================================
-- Sports Business Dashboard — Liga Sudamericana de Fútbol
-- setup.sql | Creación de tablas y datos de ejemplo
-- Datos sintéticos para portfolio de Data Analytics
-- ============================================================

-- ------------------------------------------------------------
-- TABLA: teams
-- ------------------------------------------------------------
DROP TABLE IF EXISTS teams;
CREATE TABLE teams (
  team_id          INTEGER PRIMARY KEY,
  team_name        TEXT    NOT NULL,
  city             TEXT    NOT NULL,
  founded_year     INTEGER,
  stadium_capacity INTEGER
);

INSERT INTO teams VALUES
(1, 'Atlético Norte', 'Buenos Aires', 1905, 45000),
(2, 'Deportivo Sur',  'Montevideo',   1912, 32000),
(3, 'Club Andino',    'Santiago',     1898, 55000),
(4, 'Real Costa',     'Lima',         1920, 38000),
(5, 'Unión Central',  'Bogotá',       1935, 41000);

-- ------------------------------------------------------------
-- TABLA: matches
-- ------------------------------------------------------------
DROP TABLE IF EXISTS matches;
CREATE TABLE matches (
  match_id      INTEGER PRIMARY KEY,
  home_team_id  INTEGER NOT NULL,
  away_team_id  INTEGER NOT NULL,
  match_date    TEXT    NOT NULL,
  home_score    INTEGER,
  away_score    INTEGER,
  season        TEXT,
  attendance    INTEGER,
  FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
  FOREIGN KEY (away_team_id) REFERENCES teams(team_id)
);

INSERT INTO matches VALUES
(1,  1, 2, '2024-03-03', 2, 1, '2024', 38000),
(2,  3, 4, '2024-03-05', 1, 1, '2024', 51000),
(3,  5, 1, '2024-03-08', 3, 0, '2024', 39000),
(4,  2, 3, '2024-03-10', 0, 2, '2024', 29000),
(5,  4, 5, '2024-03-12', 1, 2, '2024', 35000),
(6,  1, 3, '2024-04-01', 1, 3, '2024', 42000),
(7,  2, 4, '2024-04-03', 2, 2, '2024', 28000),
(8,  5, 3, '2024-04-07', 0, 1, '2024', 40000),
(9,  4, 1, '2024-04-10', 2, 1, '2024', 36000),
(10, 3, 2, '2024-04-14', 4, 0, '2024', 53000);

-- ------------------------------------------------------------
-- TABLA: tickets
-- ------------------------------------------------------------
DROP TABLE IF EXISTS tickets;
CREATE TABLE tickets (
  ticket_id        INTEGER PRIMARY KEY,
  match_id         INTEGER NOT NULL,
  ticket_type      TEXT    NOT NULL,
  quantity_sold    INTEGER,
  price_per_ticket DECIMAL,
  total_revenue    DECIMAL,
  FOREIGN KEY (match_id) REFERENCES matches(match_id)
);

INSERT INTO tickets VALUES
(1,  1, 'General', 1200, 25, 30000),
(2,  1, 'Platea',   600, 45, 27000),
(3,  1, 'VIP',      150, 80, 12000),
(4,  2, 'General', 1800, 25, 45000),
(5,  2, 'Platea',   900, 45, 40500),
(6,  2, 'VIP',      200, 80, 16000),
(7,  3, 'General', 1400, 25, 35000),
(8,  3, 'Platea',   700, 45, 31500),
(9,  3, 'VIP',      180, 80, 14400),
(10, 4, 'General',  900, 25, 22500),
(11, 4, 'Platea',   450, 45, 20250),
(12, 4, 'VIP',      120, 80,  9600),
(13, 5, 'General', 1100, 25, 27500),
(14, 5, 'Platea',   550, 45, 24750),
(15, 5, 'VIP',      160, 80, 12800);

-- ------------------------------------------------------------
-- TABLA: sponsors
-- ------------------------------------------------------------
DROP TABLE IF EXISTS sponsors;
CREATE TABLE sponsors (
  sponsor_id     INTEGER PRIMARY KEY,
  sponsor_name   TEXT    NOT NULL,
  industry       TEXT,
  contract_value DECIMAL,
  team_id        INTEGER,
  start_date     TEXT,
  end_date       TEXT,
  FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

INSERT INTO sponsors VALUES
(1, 'TechCorp SA', 'Tecnología',         250000, 3,    '2024-01-01', '2025-12-31'),
(2, 'BeerBrand',   'Bebidas',            180000, 1,    '2024-01-01', '2024-12-31'),
(3, 'SportGear',   'Indumentaria',        95000, 2,    '2023-06-01', '2025-06-01'),
(4, 'MobileNet',   'Telecomunicaciones', 320000, NULL, '2024-01-01', '2026-12-31'),
(5, 'AutoMarca',   'Automotriz',         145000, 4,    '2024-03-01', '2025-03-01'),
(6, 'FoodChain',   'Alimentos',           88000, 5,    '2023-09-01', '2024-09-01'),
(7, 'BankPlus',    'Finanzas',           210000, 3,    '2024-01-01', '2025-12-31');

-- ------------------------------------------------------------
-- TABLA: revenue
-- ------------------------------------------------------------
DROP TABLE IF EXISTS revenue;
CREATE TABLE revenue (
  revenue_id   INTEGER PRIMARY KEY,
  team_id      INTEGER NOT NULL,
  revenue_type TEXT    NOT NULL,
  amount       DECIMAL,
  month        INTEGER,
  year         INTEGER,
  FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

INSERT INTO revenue VALUES
(1,  1, 'Tickets',      85000,  3, 2024),
(2,  1, 'Sponsors',    120000,  3, 2024),
(3,  1, 'Merchandise',  32000,  3, 2024),
(4,  1, 'TV',           95000,  3, 2024),
(5,  2, 'Tickets',      54000,  3, 2024),
(6,  2, 'Sponsors',     78000,  3, 2024),
(7,  2, 'Merchandise',  18000,  3, 2024),
(8,  2, 'TV',           60000,  3, 2024),
(9,  3, 'Tickets',     112000,  3, 2024),
(10, 3, 'Sponsors',    195000,  3, 2024),
(11, 3, 'Merchandise',  67000,  3, 2024),
(12, 3, 'TV',          140000,  3, 2024),
(13, 4, 'Tickets',      61000,  3, 2024),
(14, 4, 'Sponsors',     88000,  3, 2024),
(15, 4, 'Merchandise',  24000,  3, 2024),
(16, 4, 'TV',           72000,  3, 2024),
(17, 5, 'Tickets',      73000,  3, 2024),
(18, 5, 'Sponsors',    102000,  3, 2024),
(19, 5, 'Merchandise',  41000,  3, 2024),
(20, 5, 'TV',           85000,  3, 2024);
```

Pegalo en el área de contenido, después abajo en el mensaje del commit escribís:
```
Add database setup script with all 5 tables
