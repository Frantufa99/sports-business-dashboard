# Sports Business Dashboard — South American Football League

Business analytics project simulating the role of a Data Analyst
for a fictional South American football league (LSF).

---

## Objective

Answer concrete business questions about revenue, sponsorships,
ticket sales, and performance using SQL and Power BI.

This project is part of my Data Analytics portfolio and documents
my progress from foundational SQL to full business analysis
with visualization.

---

## Business Questions

**Revenue & Teams**
- Which team generated the most revenue in the season?
- How is revenue distributed by type (Tickets, Sponsors, Merchandise, TV)?
- Which city generates the most money for the league?

**Matches & Attendance**
- Which match sold the most tickets?
- What were the 5 matches with the highest revenue?
- Which ticket type (VIP, General, Bleachers) generates the most income?

**Sponsorships**
- Which sponsor has the most valuable contract?
- Which industry invests the most in the league?
- How many sponsors does each team have?

---

## Data Model

The database contains 5 related tables:

| Table | Description |
|---|---|
| `teams` | League teams with general information |
| `matches` | Matches played with date, result and attendance |
| `tickets` | Ticket sales by match and type |
| `sponsors` | Sponsorship contracts with teams or the league |
| `revenue` | Revenue by team, type and period |

---

## Repository Structure
```
sports-business-dashboard/
├── data/
│   └── setup.sql                  — Table creation and sample data
├── queries/
│   └── modulo1_exploracion.sql    — Basic exploration (Module 1)
└── README.md
```

---

## Tech Stack

| Tool | Use |
|---|---|
| SQL (SQLite) | Queries and data analysis |
| Power BI | Visualization and dashboard (next stage) |
| GitHub | Version control and documentation |

---

## Project Status

| Module | Content | Status |
|---|---|---|
| Module 1 | Basic exploration — SELECT, ORDER BY, DISTINCT, LIMIT | ✅ Complete |
| Module 2 | Aggregated analysis — WHERE, GROUP BY, JOINs, functions | 🔄 In progress |
| Module 3 | Visualization — Power BI dashboard | ⏳ Pending |

---

## How to Run

1. Open [SQLiteOnline](https://sqliteonline.com)
2. Run `data/setup.sql` to create tables and load data
3. Run any file from the `queries/` folder

---

## About the Data

Synthetic dataset designed to simulate a real sports business
environment. Data is fictional but the data model, business
questions, and analysis reflect real industry scenarios.

---

## Author

Franco — Data Analyst in training
SQL · Power BI · Python
Buenos Aires, Argentina
```

---

**Cómo subir esto a GitHub:**

1. Desde la raíz del repositorio clickeás el archivo `LÉAME.md` que ya existe
2. Clickeás el ícono del lápiz ✏️ para editarlo
3. Borrás todo el contenido que tiene ahora
4. Pegás este README completo
5. Mensaje del commit:
```
Add complete project README in English
