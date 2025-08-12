with ratings AS (
    select DISTINCT user_id from MOVIELENS.dev.src_ratings
),
tags AS (
    select DISTINCT user_id from MOVIELENS.dev.src_tags
)
select distinct user_id from (
    select * from ratings
    UNION
    select * from tags
)