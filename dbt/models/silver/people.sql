with source as (
    select
        [people_id],
        [name],
        [height],
        [mass],
        [hair_color],
        [skin_color],
        [eye_color],
        [birth_year],
        [gender],
        [created],
        [edited],
        [planet_id],
        [description]
    from {{ ref('stg_Dagobah__People') }}
),
subset as (
    select
        *,
        row_number() over (partition by [people_id] order by [edited] desc) as row_num
    from source
)
select
    [people_id],
    [name],
    [height],
    [mass],
    [hair_color],
    [skin_color],
    [eye_color],
    [birth_year],
    [gender],
    [created],
    [edited],
    [planet_id],
    [description]
from subset
