with source as (

    select * from {{ source('tpch', 'region') }}

)

select * from source