## Data Warehouse and Analytics Project

 A end-to-end data warehousing solution — from raw ERP & CRM CSVs to a star-schema warehouse with SQL-based reporting and BI dashboards.

![SQL Server](https://img.shields.io/badge/SQL%20Server-CC2927?style=flat&logo=microsoftsqlserver&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat&logo=powerbi&logoColor=black)
![ETL](https://img.shields.io/badge/Pipeline-ETL-blue?style=flat)
![Star Schema](https://img.shields.io/badge/Model-Star%20Schema-8A2BE2?style=flat)

---

## Overview

This project demonstrates a complete data engineering and analytics workflow — consolidating data from two source systems (ERP and CRM) into a unified analytical warehouse, enabling business stakeholders to query customer demand, product performance, and sales trends from a single source of truth.

**The problem it solves:** Raw operational data lives in siloed CSV exports from disparate systems. Without a warehouse layer, cross-functional analysis is slow, error-prone, and inconsistent. This project eliminates that gap.

---

## Architecture — Medallion Layers

```
Bronze Layer  →  Silver Layer  →  Gold Layer
(Raw ingest)     (Cleansed)       (Star Schema)
```

| Layer | Description |
|---|---|
| **Bronze** | Raw CSV data ingested as-is into SQL Server staging tables |
| **Silver** | Cleaned, standardised, and normalised data ready for modelling |
| **Gold** | Business-ready Fact & Dimension tables in a star schema, optimised for analytical queries |

---

## Project Scope

- **Source systems:** ERP and CRM datasets (CSV format)
- **Warehouse:** Microsoft SQL Server
- **Focus:** Latest dataset snapshot only — historical versioning / SCD not in scope
- **Consumers:** Business and analytics teams via SQL reports and Power BI dashboards

---

## What Was Built

### 1. ETL Pipeline
- Ingested raw CSV data from ERP and CRM into SQL Server Bronze tables
- Applied data cleansing: null handling, type standardisation, deduplication
- Transformed Silver layer with business rules and naming conventions

### 2. Data Model (Star Schema)
- Designed Fact and Dimension tables for optimised analytical queries
- Unified customer and product dimensions across ERP and CRM sources
- Documented data model for both technical and business stakeholders

### 3. SQL Reports & Dashboards
- Customer behaviour analysis — purchase frequency, segment trends
- Product performance — top sellers, category contribution
- Sales trends — time-series revenue, demand patterns

---

## Repository Structure

```
data-warehouse-project/
│
├── datasets/               # Source CSV files (ERP and CRM data)
│
├── docs/
│   ├── data_architecture   # Architecture decisions and methodology
│   ├── data_catalog.md     # Column definitions and table descriptions
│   ├── data_flow.md        # Source → Bronze → Silver → Gold lineage
│   └── naming_conventions.md
│
├── scripts/
│   ├── bronze/             # Raw ingestion scripts
│   ├── silver/             # Cleaning and transformation scripts
│   └── gold/               # Star schema DDL and load scripts
│
├── tests/                  # Data quality and validation scripts
├── README.md
└── requirements.txt
```

---

## Key Outcomes

- Unified ERP and CRM data into a **single analytical layer**, eliminating cross-system lookup friction
- Star schema reduced query complexity — analysts query Fact tables directly without joining raw tables
- Reusable ETL scripts with documented transformation logic for team handoff

---

## Tools & Technologies

| Tool | Purpose |
|---|---|
| SQL Server | Data warehouse engine and query layer |
| Power BI | Dashboard and reporting layer |
| CSV / Flat Files | Source data from ERP and CRM systems |

---

## How to Run

```bash
# 1. Clone the repository
git clone https://github.com/yourusername/data-warehouse-project.git

# 2. Set up SQL Server and create the database
# Run scripts in order: bronze → silver → gold

# 3. Load source CSVs into the bronze layer
# (see /scripts/bronze/ for ingestion scripts)

# 4. Execute silver transformation scripts
# 5. Build gold layer star schema
# 6. Connect Power BI to the gold layer for dashboards
```

---

## Skills Demonstrated

`SQL Server` · `ETL Pipeline Design` · `Data Modelling` · `Star Schema` · `Data Cleansing` · `Power BI` · `ERP/CRM Integration` · `Medallion Architecture`
