create view "dbt_mlehtola"."stg_Dagobah__People" as with 

source as (

    select * from "Dagobah"."dbo"."People"

),

renamed as (

    select
        [result.properties.url] as character_id,
        [result.properties.name] as name,
        [result.properties.height] as height,
        [result.properties.mass] as mass,
        [result.properties.hair_color] as hair_color,
        [result.properties.skin_color] as skin_color,
        [result.properties.eye_color] as eye_color,
        [result.properties.birth_year] as birth_year,
        [result.properties.gender] as gender,
        [result.properties.created] as created,
        [result.properties.edited] as edited,
        [result.properties.homeworld] as planet_id,
        [result.description] as description
    from source

)

select * from renamed;