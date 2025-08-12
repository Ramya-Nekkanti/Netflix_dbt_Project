with raw_movies AS (
    SELECT * FROM {{ source('netflix', 'r_movies') }}
)
SELECT
    movieId as movie_id,
    title,
    genres
from raw_movies