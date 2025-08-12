
  
    

create or replace transient table MOVIELENS.dev.fct_genome_scores
    
    
    
    as (with src_scores AS (
    select * from MOVIELENS.dev.src_genome_scores
)
select 
    movie_id,
    tag_id,
    ROUND(relevance,4) AS relevance_score
from src_scores
where relevance > 0
    )
;


  