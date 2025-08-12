{{
    config(
        MATERIALIZED = 'incremental',
        on_schema_change = 'fail'
    )
}}
with src_ratings AS (
    select * from {{ ref('src_ratings') }}
)

SELECT
    user_id,
    movie_id,
    rating,
    rating_timestamp
from src_ratings
where rating IS NOT NULL

{% if is_incremental() %}
    AND rating_timestamp > (select max(rating_timestamp)) from {{ this }}
{% endif %}