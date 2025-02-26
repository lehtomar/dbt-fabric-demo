with 

source as (

    select * from {{ source('Dagobah', 'Vehicles') }}

),

renamed as (

    select
        [result.properties.url] as vehicle_id,
        [result.properties.name] as name,
        [result.properties.model] as model,
        [result.properties.vehicle_class] as vehicle_class,
        [result.properties.manufacturer] as manufacturer,
        [result.properties.cost_in_credits] as cost_in_credits,
        [result.properties.length] as length,
        [result.properties.crew] as crew,
        [result.properties.passengers] as passengers,
        [result.properties.max_atmosphering_speed] as max_atmosphering_speed,
        [result.properties.cargo_capacity] as cargo_capacity,
        [result.properties.consumables] as consumables,
        [result.properties.films] as films,
        [result.properties.pilots] as pilots,
        [result.properties.created] as created,
        [result.properties.edited] as edited,
        [result.description] as description

    from source

)

select * from renamed
