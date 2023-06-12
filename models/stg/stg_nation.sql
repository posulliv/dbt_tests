with source as (

    select * from {{ ref('raw_nation') }}

),

renamed as (
    select
        nationkey as nation_key,
        name as name,
        regionkey as region_key,
        comment as comment
    from source
)

select * from renamed