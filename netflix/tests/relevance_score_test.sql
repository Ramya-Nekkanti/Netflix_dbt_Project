-- SELECT
--     movie_id,
--     tag_id,
--     relevance_score
-- FROM {{ ref('fct_genome_scores') }}
-- WHERE relevance_score <= 0

{{ no_nulls_in_cols("fct_genome_scores") }}
