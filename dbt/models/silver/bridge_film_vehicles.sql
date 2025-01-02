with source as (
    select
        film_id,
        vehicles,
        row_number() over (partition by [film_id] order by [edited] desc) as row_num
    from {{ ref('stg_Dagobah__Films') }}
),
deduplicated as (
    select * from source where row_num = 1
),
openedJson as (
    select
        film_id,
        cast(value as varchar(100)) AS vehicle_id
    FROM 
        deduplicated
    CROSS APPLY 
        OPENJSON(vehicles)
    )
select * from openedJson