Run queries on the `tutorial.billboard_top_100_year_end` database on the [Mode Analytics editor](https://modeanalytics.com/editor).

1. How many years did Mariah Carey have a song in the Top 10?
7

SELECT COUNT(*) FROM tutorial.billboard_top_100_year_end 
WHERE artist = 'Mariah Carey' AND year_rank<11

2. A list of all Whitney Houston song titles that didn't rank higher than 20th, in chronological order.

How Will I Know 1986
Greatest Love Of All  1986
I Wanna Dance With Somebody (Who Loves Me)  1987
So Emotional  1988
All The Man That I Need 1991
I Will Always Love You  1993
Exhale (Shoop Shoop)  1996
Heartbreak Hotel  1999

SELECT song_name, year FROM tutorial.billboard_top_100_year_end 
WHERE artist = 'Whitney Houston' AND year_rank<21 ORDER BY year

3. How many artists have finished a year with the number 1 song?
64

SELECT COUNT(artist) FROM tutorial.billboard_top_100_year_end 
WHERE year_rank=1 

4. In which year did Ke$ha have the most charted hits, and how many did she have that year? (Just one query...)

SELECT  year, MIN(year_rank), COUNT(song_name) FROM tutorial.billboard_top_100_year_end 
WHERE artist='Ke$ha' GROUP BY year


5. What is the highest chart position ever reached by Ke$ha's sometime collaborators, the strangely-named "3OH!3"?
73

SELECT  MAX(year_rank) FROM tutorial.billboard_top_100_year_end 
WHERE artist='3OH!3' 

6. A list of years that had a charted song containing the word "heaven" and a count of the number.

SELECT  year, COUNT(song_name) FROM tutorial.billboard_top_100_year_end 
WHERE song_name='% heaven %' GROUP BY year
