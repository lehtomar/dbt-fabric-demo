with source as (
    select
        film_id,
        characters,
        row_number() over (partition by [film_id] order by [edited] desc) as row_num
    from {{ ref('stg_Dagobah__Films') }}
),
deduplicated as (
    select * from source where row_num = 1
),
openedJson as (
    select
        film_id,
        value AS character_id
    FROM 
        deduplicated
    CROSS APPLY 
        OPENJSON(characters)
    )
select * from openedJson