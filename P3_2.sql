-- show all horror movie titles

select title from movies natural join (select movie_id from genre_is where genre_id is (select genre_id from genres where genre_name = "Horror"));

.print "\n this is appropriate since it will allow the user to look for movies of a specific genre"

/* 

expected output

title         
--------------
Insidious     
The Conjouring
The Exorcist  

*/