# 🎬 Netflix Originals Data Analysis with SQL

Explore the trends behind Netflix Originals using powerful SQL queries!  
This project dives into the genres, runtimes, IMDb scores, and premiere dates of Netflix content to uncover insights that can drive data-informed decisions.

---

## 📌 Project Overview

This project analyzes the **Netflix Originals dataset** to:

- Understand content trends (genres, runtimes, languages)
- Evaluate IMDb ratings
- Examine premiere date distributions
- Identify patterns across languages and years

All analysis is done using **MySQL**, leveraging filtering, aggregation, grouping, and sorting.

---

## 📂 Dataset Features

The dataset contains the following fields:

| Column         | Description                                    |
|----------------|------------------------------------------------|
| Title          | Name of the Netflix Original                   |
| GenreID        | ID representing the genre                      |
| Runtime        | Duration in minutes                            |
| IMDBScore      | IMDb rating of the content                     |
| Language       | Language of the movie/show                     |
| Premiere_Date  | Date the content premiered                     |

📊 [Dataset Link (Google Sheets)](https://docs.google.com/spreadsheets/d/1-8mBEVJgYg89WQp2eXlaQP7ATMCItwRJQS24MvXLHhA/edit?usp=sharing)

---

## 🎯 Key Objectives

Using MySQL, the following operations were performed:

1. ✅ Filter content with IMDb > 7, runtime > 100 mins, and language in English/Spanish.
2. 🔢 Count titles per language (only if count > 5).
3. 🎥 Identify top 3 longest Hindi-language titles, sorted by IMDb.
4. 🏠 Fetch titles containing “House” and IMDb > 6.
5. 📅 Find titles released between 2018–2020 in English, Spanish, or Hindi.
6. ⏳ Sort content with runtime < 60 mins or IMDb < 5 by release date.
7. ⭐ Average IMDb by genre (only if genre has ≥10 titles).
8. 🔁 List top 5 most common runtimes.
9. 🌐 Group 2020 releases by language with title counts.
10. 🛡️ Create a new table enforcing IMDb between 0–10 and runtime > 30 mins.

---

## 🛠️ Tools & Technologies

- **SQL (MySQL)**
- Google Sheets (for dataset hosting)
- VS Code / MySQL Workbench (for SQL scripting)
