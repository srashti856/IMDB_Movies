# 🎬 IMDB Movies SQL Analysis

## 📊 IMDB Movies Data Analysis – SQL Project

This repository contains an **SQL-based data analysis project** focused on exploring and analyzing **IMDB movie and director data**.  
The project demonstrates the **practical application of SQL concepts** to solve real-world analytical and business problems in the movie industry.

---

## 📌 Project Overview

The **IMDB Movies Data Analysis** project aims to extract meaningful insights from structured movie and director data using SQL.

The dataset consists of **two relational tables**:
- **Movies**
- **Directors**

These tables are connected through a **Primary–Foreign Key relationship**.

### Analytics Workflow Followed
- Data exploration  
- Data cleaning & validation  
- Table joining  
- Business-driven SQL analysis  
- Insight generation  

---

## 🛠 Tools & Technologies Used

- **MySQL**
- **MySQL Workbench**
- **SQL (Structured Query Language)**
- **Relational Database Management System (RDBMS)**

### SQL Concepts Covered
- `SELECT`, `WHERE`, `ORDER BY`
- `GROUP BY`, `HAVING`
- `INNER JOIN`
- Aggregate Functions (`COUNT`, `SUM`, `MAX`)
- Subqueries
- String filtering (`LIKE`, `IN`)
- Date filtering

---

## 📂 Dataset Structure

### 📁 Directors Table
| Column Name | Description |
|------------|------------|
| `id` | Unique Director ID (Primary Key) |
| `name` | Director Name |
| `gender` | Gender Code (0/2 = Male, 1 = Female) |
| `department` | Department Information |

### 📁 Movies Table
| Column Name | Description |
|------------|------------|
| `id` | Movie ID |
| `original_title` | Original Movie Title |
| `title` | Movie Title |
| `budget` | Production Budget |
| `revenue` | Revenue Generated |
| `popularity` | Popularity Score |
| `release_date` | Release Date |
| `vote_average` | Average Rating |
| `vote_count` | Number of Votes |
| `director_id` | Director ID (Foreign Key) |

---

## 🔗 Table Relationship & Join Logic

- `directors.id` → **Primary Key**
- `movies.director_id` → **Foreign Key**
- Tables were merged using **INNER JOIN**
- No physical modification was made to the original database

---

## 🧹 Data Cleaning & Validation

- Checked for **NULL values** in critical columns  
- **Directors table** contained no NULL values  
- **Movies table** had minimal NULL values in non-critical columns  
- Duplicate records verified using `GROUP BY` and `HAVING`  
- Dataset validated before analysis  

---

## 🧠 Business Questions Solved

- Total number of movies in the dataset  
- Directors with specific names or naming patterns  
- Count of female directors  
- Identification of the **10th female director**  
- Top 3 most popular movies  
- Top 3 most profitable (bankable) movies  
- Highest-rated movies since **January 1, 2000**  
- Movies directed by a specific director  
- Director with the highest number of movies  
- Most bankable director based on total profit  

---

## 📊 Key SQL Skills Demonstrated

- ✔ Data filtering and NULL handling  
- ✔ Multi-table joins and relational mapping  
- ✔ Aggregation and grouping  
- ✔ String and date manipulation  
- ✔ Optimized and readable SQL queries  
- ✔ Real-world business logic implementation  

---

## 🔍 Key Insights

- Dataset contains **47 movies** and **2,349 directors**
- Only **150 female directors**, indicating low representation
- **Top 3 Most Popular Movies**:
  - *Jurassic World*
  - *Captain America: Civil War*
  - *Avatar*
- Highest average rating (**7.6**) since January 1, 2000:
  - *The Dark Knight Rises*
  - *The Hobbit: The Desolation of Smaug*
  - *Toy Story 3*
- **Gore Verbinski** directed the most movies (**3 movies**)
- **James Cameron** is the most bankable director with total profit of **4,195,999,275**
- No movies directed by **Brenda Chapman** found in the dataset

---

## 💼 Business Recommendations

- Use **profit-based metrics** instead of revenue alone  
- Invest in **bankable directors** with proven ROI  
- Combine **ratings, popularity, and profit** for decision-making  
- Encourage **female director participation**  
- Apply **data-driven insights** to reduce financial risk  

---

## 🎯 Learning Outcomes

- Improved SQL querying and optimization skills  
- Hands-on experience with relational databases  
- Strong understanding of data cleaning and validation  
- Ability to translate data into business insights  
- Job-ready skills for **Data Analyst / SQL Analyst** roles  

---

## 🚀 Career Relevance

This project reflects **real-world SQL tasks** commonly performed in entry-level data analyst roles:
- Data exploration  
- Data cleaning  
- Reporting  
- Insight generation  
- Business problem-solving using SQL  

---

## 👤 Author

**Srashti Dubey**  
- Individual Contributor (End-to-End Project)

🔗 **LinkedIn**: [Srashti Dubey](https://www.linkedin.com/in/srashti-dubey-86b8a438a)

---

## 🎓 Internship Program

**Data Analytics Internship – DataMites**
