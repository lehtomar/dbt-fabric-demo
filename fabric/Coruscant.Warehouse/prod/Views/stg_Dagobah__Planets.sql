-- Auto Generated (Do not modify) A60C9FB2DEF88FC5F2C67B0FF962EE19A4CDCCAF5DB3E0A5E051BAA73E0B6682
create view "prod"."stg_Dagobah__Planets" as with 

source as (

    select * from "Dagobah"."dbo"."Planets"

),

renamed as (

    select
        [result.properties.url] as planet_id,
        [result.properties.name] as name,
        [result.properties.diameter] as diameter,
        [result.properties.rotation_period] as rotation_period,
        [result.properties.orbital_period] as orbital_period,
        [result.properties.gravity] as gravity,
        [result.properties.population] as population,
        [result.properties.climate] as climate,
        [result.properties.terrain] as terrain,
        [result.properties.surface_water] as surface_water,
        [result.properties.created] as created,
        [result.properties.edited] as edited,
        [result.description] as description
    from source
)

select * from renamed;