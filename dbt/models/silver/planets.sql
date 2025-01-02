with 

source as (
    select * from {{ ref('stg_Dagobah__Planets') }}
),
subset as (
    select 
        [planet_id],
        [name],
        [diameter],
        [rotation_period],
        [orbital_period],
        [gravity],
        [population],
        [climate],
        [terrain],
        [surface_water],
        [created],
        [edited],
        [description],
        row_number() over (partition by [planet_id] order by [edited] desc) as row_num
    from source
)
select [planet_id],
        [name],
        [diameter],
        [rotation_period],
        [orbital_period],
        [gravity],
        [population],
        [climate],
        [terrain],
        [surface_water],
        [created],
        [edited],
        [description]
from subset where row_num = 1