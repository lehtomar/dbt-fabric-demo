with

source as ( 
    select 
        * 
    from 
    {{ ref('stg_Dagobah__Vehicles') }}
),
subset as (
    select 
        vehicle_id,
        name,
        model,
        vehicle_class,
        manufacturer,
        cost_in_credits,
        length,
        crew,
        passengers,
        max_atmosphering_speed,
        cargo_capacity,
        consumables,
        films,
        pilots,
        created,
        edited,
        description,
        row_number() over (partition by [vehicle_id] order by [edited] desc) as row_num
    from source
)

select 
    vehicle_id,
    name,
    model,
    vehicle_class,
    manufacturer,
    cost_in_credits,
    length,
    crew,
    passengers,
    max_atmosphering_speed,
    cargo_capacity,
    consumables,
    films,
    pilots,
    created,
    edited,
    description
from subset where row_num = 1