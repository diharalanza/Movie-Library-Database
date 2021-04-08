-- show all movies of the last decade

select * from movies where year >= 2000 and year <= 2010;

.print "\n this is appropriate since it will allow the user to view movies that were released between a range of years"

/* 

movie_id  year  viewed_date  title              run_time  rating  ost_rating
--------  ----  -----------  -----------------  --------  ------  ----------
3         2003  2007-09-23   Kill Bill: Vol. 1  111       9       2         
9         2010  2015-04-10   Insidious          103       7       3         
12        2000               Unbreakable        106         

*/