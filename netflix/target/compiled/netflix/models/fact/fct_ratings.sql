
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

