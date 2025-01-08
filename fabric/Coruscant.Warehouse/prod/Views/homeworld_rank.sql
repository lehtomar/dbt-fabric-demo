create view "prod"."homeworld_rank" as with characters as (
    select * from "Coruscant"."prod"."characters"
),
planets as (
    select * from "Coruscant"."prod"."planets"
),
joined as (
    select
        planets.name as homeworld,
        count(characters.name) as character_count 
    from characters
    left join planets on characters.planet_id = planets.planet_id
    group by
        planets.name

)
select * from joined;