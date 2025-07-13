# 🎬 Netflix Originals SQL Assignment

Welcome!  
This repository contains a structured SQL project where I explored and analyzed the **Netflix Originals dataset** to uncover trends using SQL queries. The tasks include data filtering, aggregation, sorting, and constraints — all with the goal of generating meaningful insights for business decisions.

---

## 📁 Files Included

- `assignment_1.sql` — contains 10 SQL queries and table creation logic for analyzing Netflix Originals data.

---

## 📌 Project Overview

This assignment is based on the **Netflix Originals dataset**, and all queries are executed in MySQL using a database named `internshala_assignment_1`.

---

## 🔍 SQL Tasks & Solutions

Below are the tasks solved in the SQL file:

### 1️⃣ IMDb > 7 & Runtime > 100 (English/Spanish)
Retrieve all Netflix Originals with an IMDb score above 7, runtime greater than 100 minutes, and language in **English or Spanish**.

### 2️⃣ Language-wise Title Count (only > 5)
Group all titles by language and show only those languages that have more than 5 Netflix Originals.

### 3️⃣ Top 3 Longest Hindi Titles by IMDb
Get the **top 3 longest-running Hindi movies**, sorted by IMDb score (descending).

### 4️⃣ Titles Containing “House” with IMDb > 6
Find all titles that contain the word **"House"** and have an IMDb score above 6.

### 5️⃣ Titles Released Between 2018–2020 in English, Spanish, or Hindi
Filter content released between **2018 to 2020** and in any of the three popular languages.

### 6️⃣ Runtime < 60 or IMDb < 5 (Sorted by Premiere Date)
Find titles that either have short runtimes or poor ratings and sort them by **release date**.

### 7️⃣ Average IMDb Score Per Genre (Min 10 Titles)
Group by `GenreID` and show **average IMDb score** only for genres with **at least 10 titles**.

### 8️⃣ Top 5 Most Common Runtimes
Identify the **5 most frequently occurring runtimes** across all titles.

### 9️⃣ 2020 Releases Grouped by Language
List all Netflix Originals released in 2020 and group them by language, showing the **total count** for each.

### 🔟 Create Table with Constraints
Create a new table `netflix_originals_validated` with constraints:
- `IMDbScore` must be between **0 and 10**
- `Runtime` must be greater than **30 minutes**

---

## 🛠️ Technologies Used

- ✅ SQL (MySQL)
- 🗃️ MySQL Workbench / phpMyAdmin (Recommended GUI)
- 📄 Dataset columns: `Title`, `GenreID`, `Runtime`, `IMDBScore`, `Language`, `Premiere_Date`

---

## ✅ How to Use

1. **Import or create the database**: `internshala_assignment_1`
2. **Run the SQL file**: Load and execute `assignment_1.sql` in MySQL.
3. **View results**: Each query block is self-contained and labeled for clarity.

---

## 👤 Author

**Sabarna Jana**  
🎓 MCA (AI), Data Enthusiast  
🔗 [LinkedIn](https://www.linkedin.com/in/sabarna-jana)

---

## 🌟 Support

If you liked this project or learned something from it, feel free to **star** ⭐ this repository!

---

