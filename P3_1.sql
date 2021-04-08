--select all movies directed by Tarantino

select * from movies natural join (select movie_id from dir_by where dir_id = (select dir_id from directors where dir_name = 'James Wan'));

.print "\n this is appropriate since it will allow the user to find the movies directed by a specific director"

/*

expected output

movie_id  year  viewed_date  title           run_time  rating  ost_rating
--------  ----  -----------  --------------  --------  ------  ----------
9         2010  2015-04-10   Insidious       103       7       3         
10        2013               The Conjouring  112   

*/