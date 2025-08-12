
  
    

create or replace transient table MOVIELENS.dev.src_ratings
    
    
    
    as (

with raw_ratings AS (
    select * from MOVIELENS.RAW.RAW_RATINGS
)
SELECT
    userID as user_id,
    movieId as movie_id,
    rating,
    TO_TIMESTAMP_LTZ(timestamp) as rating_timestamp
from raw_ratings
    )
;


  