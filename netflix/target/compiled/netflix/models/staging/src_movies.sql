with raw_movies AS (
    SELECT * FROM MOVIELENS.raw.raw_movies
)
SELECT
    movieId as movie_id,
    title,
    genres
from raw_movies