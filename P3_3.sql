-- select all movies yet to watch

select * from movies where viewed_date is null;

.print "\n this is appropriate since it will allow the user to view movies that they havent watched yet"

/* 

expected output

movie_id  year  viewed_date  title           run_time  rating  ost_rating
--------  ----  -----------  --------------  --------  ------  ----------
8         2011               Real Steel      127                         
10        2013               The Conjouring  112                         
12        2000               Unbreakable     106   

*/