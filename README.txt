# IMDB_movies_sql_analysis

## IMDB Movies Data Analysis – SQL Project

This repository contains an SQL-based data analysis project focused on exploring and analyzing IMDB movie and director data.  
The project demonstrates the practical application of SQL concepts to solve real-world analytical and business-related problems in the movie industry.

---

## 📌 Project Overview

The IMDB Movies Data Analysis project aims to extract meaningful insights from structured movie and director data using SQL.  
The dataset consists of two relational tables: **Movies** and **Directors**, connected through a primary–foreign key relationship.

The project follows a complete analytics workflow including:
- Data exploration
- Data cleaning and validation
- Table joining
- Business-driven SQL analysis
- Insight generation

---

## 🛠 Tools & Technologies Used

- **MySQL**
- **MySQL Workbench**
- **SQL (Structured Query Language)**
- **Relational Database Management System (RDBMS)**

### SQL Concepts Used
- SELECT, WHERE, ORDER BY
- GROUP BY, HAVING
- INNER JOIN
- Aggregate Functions (COUNT, SUM, MAX)
- Subqueries
- String Filtering (LIKE, IN)
- Date Filtering

---

## 📂 Dataset Structure

The analysis is performed using the following tables:

### Directors Table
- `id` – Unique director ID (Primary Key)
- `name` – Director name
- `gender` – Gender code (0/2 = Male, 1 = Female)
- `department` – Department information

### Movies Table
- `id` – Movie ID
- `original_title` – Original movie title
- `title` – Movie title
- `budget` – Production budget
- `revenue` – Revenue generated
- `popularity` – Popularity score
- `release_date` – Release date
- `vote_average` – Average rating
- `vote_count` – Number of votes
- `director_id` – Director ID (Foreign Key)

---

## 🔗 Table Relationship & Data Merging Logic

- `directors.id` is used as the **Primary Key**
- `movies.director_id` is used as the **Foreign Key**
- Tables were logically merged using an **INNER JOIN**
- No physical changes were made to the original database



---

## 🧹 Data Cleaning & Validation

- Checked NULL values in all critical columns.
- Directors table contained no NULL values.
- Movies table had minimal NULL values in non-critical columns.
- Duplicate records were checked using `GROUP BY` and `HAVING`.
- Dataset was validated before performing analysis.

---

## 🧠 Business Questions Solved

- Total number of movies in the IMDB dataset.
- Directors with specific names and naming patterns.
- Count of female directors.
- Identification of the 10th female director.
- Top 3 most popular movies.
- Top 3 most bankable movies using profit calculation.
- Highest-rated movies since January 1, 2000.
- Movies directed by a specific director.
- Director with the most movies.
- Most bankable director based on total profit.

---

## 📊 Key SQL Concepts Demonstrated

✔ Data filtering and cleansing (NULL handling)  
✔ Multi-table joins and relational mapping  
✔ Aggregation and grouping for trend analysis  
✔ String and date manipulation  
✔ Writing readable and optimized SQL queries  
✔ Applying real-world business logic in SQL  

---

## 🔍 Key Insights

- The dataset contains **47 movies** and **2349 directors**.
- Only **150 female directors** were identified, showing low representation.
- **Top 3 most popular movies**:
  - *Jurassic World*
  - *Captain America: Civil War*
  - *Avatar*
- Highest average vote since **January 1, 2000** is **7.6**, achieved by:
  - *The Dark Knight Rises*
  - *The Hobbit: The Desolation of Smaug*
  - *Toy Story 3*
- **Gore Verbinski** directed the highest number of movies (**3 movies**).
- **James Cameron** is the most bankable director with a total profit of **4,195,999,275**.
- No movies directed by **Brenda Chapman** were found in the dataset.

---

## 💼 Business Recommendations

- Use **profit-based metrics** instead of revenue alone to measure success.
- Invest in **bankable directors** with proven profitability.
- Combine **popularity, ratings, and profit** for better decision-making.
- Encourage diversity by promoting **female director participation**.
- Apply **data-driven analysis** early to reduce financial risk.

---

## 🎯 Learning Outcomes

- Improved SQL querying and optimization skills.
- Hands-on experience with relational databases.
- Strong understanding of data cleaning and validation.
- Ability to translate data into business insights.
- Job-ready skills for **Data Analyst / SQL Analyst** roles.

---

## 🚀 Career Relevance

This project reflects real-world SQL tasks commonly performed in entry-level data analyst roles, including:
- Data exploration
- Data cleaning
- Reporting
- Insight generation
- Business problem-solving using SQL

---

## 👤 Team Members

- **Srashti Dubey**  
  - Worked as an Individual Contributor and delivered the project end-to-end  

🔗 LinkedIn: https://www.linkedin.com/in/srashti-dubey-86b8a438a

---

## 🎓 Internship Program

Data Analytics Internship – **DataMites**


