USE project_movie_database;
SHOW TABLES;
DESC directors;
DESC movies;

select * FROM directors;
select * FROM movies;

# CHECKING NULL VALUES FROM directors TABLE
SELECT 
    COUNT(*) AS total_rows,
    COUNT(name) AS name_not_null,
    COUNT(gender) AS gender_not_null,
    COUNT(department) AS department_not_null
FROM directors;


# CHECKING NULL VALUES FROM movies TABLE
SELECT 
    COUNT(*) AS total_rows,
    COUNT(budget) AS budget_not_null,
    COUNT(revenue) AS revenue_not_null,
    COUNT(popularity) AS popularity_not_null,
    COUNT(vote_average) AS vote_avg_not_null
FROM movies;


SELECT
    COUNT(*) AS total_rows,
    COUNT(id) AS id_not_null,
    COUNT(original_title) AS original_title_not_null,
    COUNT(budget) AS budget_not_null,
    COUNT(popularity) AS popularity_not_null,
    COUNT(release_date) AS release_date_not_null,
    COUNT(revenue) AS revenue_not_null,
    COUNT(title) AS title_not_null,
    COUNT(vote_average) AS vote_average_not_null,
    COUNT(vote_count) AS vote_count_not_null,
    COUNT(overview) AS overview_not_null,
    COUNT(tagline) AS tagline_not_null,
    COUNT(uid) AS uid_not_null,
    COUNT(director_id) AS director_id_not_null
FROM movies;

select * FROM directors;
select * FROM movies;

# DUPLICATE CHECK – DIRECTORS TABLE
SELECT 
    name, 
    COUNT(*) AS duplicate_count
FROM directors
GROUP BY name
HAVING COUNT(*) > 1;



# DUPLICATE CHECK – MOVIES TABLE
SELECT 
    title, 
    COUNT(*) AS duplicate_count
FROM movies
GROUP BY title
HAVING COUNT(*) > 1;



#To merge this both tables use id as primary key from table directors and drop id from table movies and replace directors_id to id. 
SELECT *
FROM movies m
JOIN directors d
ON m.director_id = d.id;

# Can you get all data about movies?  
select * FROM movies;


# How do you get all data about directors? 
select * FROM directors;

# Check how many movies are present in IMDB. 
select count(*) as Total_movies 
from movies;


# Find these 3 directors: James Cameron ; Luc Besson ; John Woo 
select * from directors 
where name in('James Cameron' , 'Luc Besson' , 'John Woo');

# Find all directors with name starting with S. 
select * from directors 
where name LIKE 'S%';

# Count female directors. 
SELECT COUNT(*) AS female_directors
FROM directors
WHERE gender = 1;


# Find the name of the 10th first women directors? 
SELECT * FROM directors
WHERE gender=1
order by id
limit 1 offset 9;


# What are the 3 most popular movies? 

select * FROM movies;


SELECT id,original_title,title,popularity,release_date
FROM movies
order by popularity desc
limit 3 ;


# What are the 3 most bankable movies? 

SELECT 
    id,
    title,
    revenue,
    budget,
    (revenue - budget) AS profit
FROM movies
ORDER BY profit DESC
LIMIT 3;


# What is the most awarded average vote since the January 1st, 2000?

SELECT id,original_title,title, vote_average,vote_count,release_date
FROM movies
WHERE release_date >= '2000-01-01'
  AND vote_average = (
      SELECT MAX(vote_average)
      FROM movies
      WHERE release_date >= '2000-01-01'
  );
  
  
  
# Which movie(s) were directed by Brenda Chapman? 

SELECT m.id,m.original_title,m.title,m.release_date,d.name AS director
FROM movies m
JOIN directors d
ON m.director_id = d.id
WHERE d.name = 'Brenda Chapman';

select * from directors;
select * FROM movies;

SELECT *
FROM movies m
JOIN directors d
ON m.director_id = d.id;


# Which director made the most movies? 

SELECT 
    d.id,d.name AS director_name,
    COUNT(m.id) AS total_movies
FROM movies m
JOIN directors d
ON m.director_id = d.id
GROUP BY d.id,d.name
ORDER BY total_movies DESC
LIMIT 1;


# Which director is the most bankable? 

SELECT 
    d.id,d.name AS director_name,
    SUM(m.revenue - m.budget) AS total_profit
FROM movies m
JOIN directors d
ON m.director_id = d.id
GROUP BY d.id,d.name
ORDER BY total_profit DESC
LIMIT 1;