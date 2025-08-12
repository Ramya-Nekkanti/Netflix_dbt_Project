
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- SELECT
--     movie_id,
--     tag_id,
--     relevance_score
-- FROM MOVIELENS.dev.fct_genome_scores
-- WHERE relevance_score <= 0

select * from "MOVIELENS"."DEV"."FCT_GENOME_SCORES" where
    
        MOVIE_ID IS NULL OR 
    
        TAG_ID IS NULL OR 
    
        RELEVANCE_SCORE IS NULL OR 
    
    FALSE

  
  
      
    ) dbt_internal_test