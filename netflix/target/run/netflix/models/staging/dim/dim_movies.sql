
  create or replace   view MOVIELENS.RAW.dim_movies
  
  
  
  
  as (
    with src_movies AS (
    select * from MOVIELENS.RAW.src_movies
)
select 
    movie_id,
    INITCAP(TRIM(title)) AS movie_title,
    SPLIT(genres,'|') AS genre_array,
    genres
from src_movies
  );

