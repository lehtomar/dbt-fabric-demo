-- Auto Generated (Do not modify) 83CC7F9DF74E22B8A5832949CFA500CB140AC367508A761D3EFBE4D6F256E851
create view "dbt_mlehtola"."stg_Dagobah__Vehicles" as with 

source as (

    select * from "Dagobah"."dbo"."Vehicles"

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

select * from renamed;