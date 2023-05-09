{{ 
    config(
        tags = ['location'],
        materialized = 'view'
    )
}}

with nation as (
    
    select * from {{ ref('src_nation') }}

),
region as (
    
    select * from {{ ref('src_region') }}

),

final as (
    select
        nation.nation_key,
        nation.name as nation,
        nation.region_key,
        region.name as region
    from
        nation
    inner join region
            on nation.region_key = region.region_key
)

select
    *
from
    final
order by
    nation_key