SELECT Title,GenreID,Runtime,IMDBScore,Language,Premiere_Date
FROM internshala_assignment_1.netflix_originals;

-- 1: . Retrieve all Netflix Originals with an IMDb score greater than 7, runtime greater than 100 minutes, and the
-- language is either English or Spanish.

SELECT Title,GenreID,Runtime,IMDBScore,Language,Premiere_Date
FROM internshala_assignment_1.netflix_originals
where IMDBScore > 7 and Runtime > 100 and Language in ('English','Spanish');

-- 2:  Find the total number of Netflix Originals in each language, but only show those languages that have more
-- than 5 titles.

-- This is for total
select Language,count(Language) as 'Titles'
from internshala_assignment_1.netflix_originals
group by language;

-- languages that have more than 5 titles
select Language,count(Language) as 'Titles'
from internshala_assignment_1.netflix_originals
group by language
having count(language) > 5;

-- 3. Get the top 3 longest-running movies in Hindi language sorted by IMDb score in descending order.
SELECT Title,Runtime,IMDBScore,Language
FROM internshala_assignment_1.netflix_originals
where language = 'Hindi' 
order by Runtime desc
limit 3;

-- 4. Retrieve all titles that contain the word "House" in their name and have an IMDb score greater than 6.
SELECT Title, IMDBScore
FROM internshala_assignment_1.netflix_originals
WHERE Title LIKE '%House%'
  AND IMDBScore > 6;
  
-- 5. Find all Netflix Originals released between the years 2018 and 2020 that are in either English, Spanish, or Hindi.
SELECT Title, Language, Premiere_Date
FROM internshala_assignment_1.netflix_originals
WHERE YEAR(Premiere_Date) BETWEEN 2018 AND 2020
  AND Language IN ('English', 'Spanish', 'Hindi');
  
-- 6. Find all movies that either have a runtime less than 60 minutes or an IMDb score less than 5, sorted by
-- Premiere Date.
SELECT Title, Runtime, IMDBScore, Premiere_Date
FROM internshala_assignment_1.netflix_originals
WHERE Runtime < 60 OR IMDBScore < 5
ORDER BY Premiere_Date;

-- 7. Get the average IMDb score for each genre where the genre has at least 10 movies.
SELECT GenreID, AVG(IMDBScore) AS Avg_IMDB_Score, COUNT(*) AS Total_Titles
FROM internshala_assignment_1.netflix_originals
GROUP BY GenreID
HAVING COUNT(*) >= 10;

-- 8. Retrieve the top 5 most common runtimes for Netflix Originals.
SELECT Runtime, COUNT(*) AS Frequency
FROM internshala_assignment_1.netflix_originals
GROUP BY Runtime
ORDER BY Frequency DESC
LIMIT 5;

-- 9. List all Netflix Originals that were released in 2020, grouped by language, and show the total count of titles for
-- each language.
SELECT Language, COUNT(*) AS Total_Titles
FROM internshala_assignment_1.netflix_originals
WHERE YEAR(Premiere_Date) = 2020
GROUP BY Language
ORDER BY Total_Titles DESC;

-- 10. Create a new table that enforces a constraint on the IMDb score to be between 0 and 10 and the runtime to
-- be greater than 30 minutes.
USE internshala_assignment_1;
CREATE TABLE netflix_originals_validated (
    Title VARCHAR(255),
    GenreID INT,
    Runtime INT CHECK (Runtime > 30),
    IMDBScore DECIMAL(3,1) CHECK (IMDBScore BETWEEN 0 AND 10),
    Language VARCHAR(100),
    Premiere_Date DATE
);

SELECT Title,GenreID,Runtime,IMDBScore,Language,Premiere_Date
FROM internshala_assignment_1.netflix_originals_validated;
















