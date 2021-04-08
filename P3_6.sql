-- show all movies starring samuel L jackson and directed by quentin tarantino

select * from movies natural join (select movie_id from dir_by where dir_id = (select dir_id from directors where dir_name = 'Quentin Tarantino')) natural join (select title from movies natural join (select movie_id from perf_by where star_id = (select star_id from stars where star_name = 'Samuel L. Jackson')));

.print "\n this is appropriate since it will allow the user to view movies directed by a specifc director AND starring a specific star"

/* 

movie_id  year  viewed_date  title             run_time  rating  ost_rating
--------  ----  -----------  ----------------  --------  ------  ----------
1         2012  2014-05-03   Django Unchained  165       8       2         
2         1994  2004-01-15   Pulp Fiction      154       7       2    

*/