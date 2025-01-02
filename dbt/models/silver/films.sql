with

source as ( 
    select 
        * 
    from 
    {{ ref('stg_Dagobah__Films') }}
),
subset as (
    select 
        film_id,
        title,
        episode,
        release_date,
        producer,
        opening_crawl,
        director,
        row_number() over (partition by [film_id] order by [edited] desc) as row_num
    from source
)

select 
    film_id,
    title,
    episode,
    release_date,
    producer,
    opening_crawl,
    director 
from subset where row_num = 1