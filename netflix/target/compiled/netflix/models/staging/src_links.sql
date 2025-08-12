with raw_links AS (
    select * from MOVIELENS.RAW.RAW_LINKS
)
SELECT
   movieId as movie_id,
   imdbId as imdb_id,
   tmdbId as tmdb_id
from raw_links