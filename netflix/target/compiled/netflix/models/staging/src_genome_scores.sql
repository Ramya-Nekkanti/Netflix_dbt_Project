with raw_genome_scores AS (
    select * from MOVIELENS.RAW.RAW_GENOME_SCORES
)
SELECT
    movieId as movie_id,
    tagId as tag_id,
    relevance
FROM raw_genome_scores