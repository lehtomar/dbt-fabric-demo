-- Auto Generated (Do not modify) A62051AE8E5F293426884FFDA9BEDEF08BB108390BE4BEE98DA34262D6ECD714
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