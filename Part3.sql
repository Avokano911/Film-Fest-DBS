-- Designing implementing queries
-- Part 3

/* Level 1 basic SQL SELECT statements with the use of numeric data, date-time functions, sring comparison andmanupulation etc.. */

-- Show the name and genre of the movie released in 1946 

SELECT F_Name, Genre FROM Film WHERE YearOfRelease = "1946";

-- Show the Person name with iD whoes name includes 'son'

SELECT PersonID, CONCAT(LastName, FirstName) AS Name FROM Person WHERE LastName LIKE '%son%' OR Firstname LIKE '%son%';

-- Show the PersonId and Film ID who received award in Cannes Film festival

SELECT PersonID, FilmID FROM Received WHERE Fest_ID = 'A11';

-- Show the PersonID and Job name who is not director.

SELECT PersonID, JobTitle FROM Worker WHERE JobTitle <> 'director';

/* Level 2 Use joins and sub-queries with GRUOP BY, ORDER BY, aggreate functions and related clasuses. */

-- Show the name of the person and number of the films who attended the festival more than one (or twice) but no one.

SELECT CONCAT(P.LastName, P.FirstName) AS FullName,
COUNT(J.FilmID) AS FilmCounts
FROM Person P
JOIN Participates J ON P.PersonID = J.PersonID
GROUP BY
     P.PersonID, P.LastName, P.FirstName
HAVING
     COUNT(J.FilmID) >= 1;

-- Show the name of the festival have highest number of movies award.

SELECT F.FestName, 
       COUNT(R.FilmID) AS NumOfAwarded 
FROM 
    Festival F 
LEFT JOIN Received R ON F.Fest_ID = R.Fest_ID
GROUP BY 
    F.FestName 
ORDER BY 
    NumOfAwarded DESC
LIMIT 1;

-- Show the name of the id , name whoes the job tile is 'wtiter'

SELECT P.PersonID, CONCAT(P.Firstname, ' ', P.LastName) AS Name
FROM Person P 
WHERE P.PersonID IN (
        SELECT W.PersonID 
        FROM Worker W
        WHERE W.JobTitle = 'Writer'
);

-- Show the festival which has highest participates

SELECT F.FestName, COUNT(R.FilmID) AS NumOfFilms
FROM Festival F
JOIN Received R ON F.Fest_ID = R.Fest_ID
GROUP BY F.FestName
ORDER BY NumOfFilms DESC 
LIMIT 1;
 -- DESC LIMIT shows highest
    
     

