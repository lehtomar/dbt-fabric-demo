with 

source as (
    select * from {{ ref('stg_Dagobah__Planets') }}
),
subset as (
    select 
        [planet_id],
        [name],
        [gravity],
        {{ replace_and_cast('[rotation_period]', 'unknown', 'int') }} as rotation_period,
        {{ replace_and_cast('[diameter]', 'unknown', 'int') }} as diameter,
        {{ replace_and_cast('[orbital_period]', 'unknown', 'int') }} as orbital_period,
        {{ replace_and_cast('[population]', 'unknown', 'bigint') }} as population,
        {{ replace_and_cast('[surface_water]', 'unknown', 'decimal(10,2)') }}  as surface_water,
        [climate],
        [terrain],
        [created],
        [edited],
        surface_water,
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