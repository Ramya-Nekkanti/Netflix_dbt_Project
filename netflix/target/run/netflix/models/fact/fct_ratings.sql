
  
    

create or replace transient table MOVIELENS.dev.fct_ratings
    
    
    
    as (
with src_ratings AS (
    select * from MOVIELENS.dev.src_ratings
)

SELECT
    user_id,
    movie_id,
    rating,
    rating_timestamp
from src_ratings
where rating IS NOT NULL


    )
;


  