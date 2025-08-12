
 with fct_ratings AS (
    select * from MOVIELENS.dev.fct_ratings
 ),
 seed_dates AS (
    select * from MOVIELENS.dev.seed_movie_release_dates
 )

 SELECT 
    f.*,
    CASE 
        when d.release_date IS NULL then 'Unknown'
        ELSE 'Known'
    END AS release_info_available
from fct_ratings f
Left join seed_dates d on f.movie_id = d.movie_id