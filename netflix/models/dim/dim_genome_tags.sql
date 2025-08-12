with src_tags AS (
    select * from {{ ref('src_genome_tags') }}
)
select 
    tag_id,
    INITCAP(TRIM(tag)) AS tag_name
FROM src_tags