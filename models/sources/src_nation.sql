with source as (

    select * from {{ source('tpch', 'nation') }}

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