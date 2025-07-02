-- Number of Athletes by Each Country 
select Country,count(*) as total_athletes from athlete group by Country order by total_athletes desc

-- Number of Athletes by Each Discipline
select Discipline,count(*) as total_athletes from athlete group by Discipline order by total_athletes desc

-- Number of Coaches by Sports
SELECT Discipline , Event , COUNT(DISTINCT Name) as count from Coach GROUP by Discipline,Event

-- Top 3 Country by Medals
SELECT Top 3 TeamCountry , gold , total from medal order by gold desc 

--  Total Male & Female Athletes
SELECT sum(Male) as Male , sum(Female) as Female from gender

-- Male & Female Ratio by Each Sports Category
SELECT 
    Discipline, 
    SUM(Male) * 1.0 / SUM(Total) AS Male_Weightage,
    SUM(Female) * 1.0 / SUM(Total) AS Female_Weightage
FROM gender
GROUP BY Discipline;


-- Total Participating Country by Each Discipline
SELECT Discipline , Event , Count(Country) as Countries from team group by Discipline ,Event

-- Teams by Each Country
Select Country , Count(TeamName) as Teams from team group by Country