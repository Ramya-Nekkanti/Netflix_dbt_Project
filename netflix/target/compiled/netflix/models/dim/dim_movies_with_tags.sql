

with movies AS (
    select * from MOVIELENS.dev.dim_movies
),
tags AS (
    select * from MOVIELENS.dev.dim_genome_tags
),
scores AS (
    select * from MOVIELENS.dev.fct_genome_scores
)
SELECT
    m.movie_id,
    m.movie_title,
    m.genres,
    t.tag_name,
    s.relevance_score,
From movies m
Left Join scores s on m.movie_id = s.movie_id
Left Join tags t on t.tag_id = s.tag_id