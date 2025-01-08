create view "prod"."stg_Dagobah__Films" as with 

source as (

    select * from "Dagobah"."dbo"."Films"

),

renamed as (

    select
    		[result.properties.url] as film_id,
            [result.properties.characters] as characters,
			[result.properties.planets] as planets,
			[result.properties.starships] as starships,
			[result.properties.vehicles] as vehicles,
			[result.properties.species] as species,
			[result.properties.created] as created,
			[result.properties.edited] as edited,
			[result.properties.producer] as producer,
			[result.properties.title] as title,
			[result.properties.episode_id] as episode,
			[result.properties.director] as director,
			[result.properties.release_date] as release_date,
			[result.properties.opening_crawl] as opening_crawl,
			[result.description] as description
    from source

)

select * from renamed;