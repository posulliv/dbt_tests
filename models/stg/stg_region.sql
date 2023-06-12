with source as (

    select * from {{ ref('raw_region') }}

),

renamed as (

    select
    
        regionkey as region_key,
        name as name,
        comment as comment

    from source

)

select * from renamed