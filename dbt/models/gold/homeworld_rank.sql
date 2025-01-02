with characters as (
    select * from {{ ref('characters') }}
),
planets as (
    select * from {{ ref('planets') }}
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
select * from joined