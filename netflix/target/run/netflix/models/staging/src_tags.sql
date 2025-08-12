
  
    

create or replace transient table MOVIELENS.dev.src_tags
    
    
    
    as (

with raw_tags AS (
    select * from MOVIELENS.RAW.RAW_TAGS
)
SELECT
   userID as user_id,
   movieId as movie_id,
   tag,
   TO_TIMESTAMP_LTZ(timestamp) as tag_timestamp
from raw_tags
    )
;


  