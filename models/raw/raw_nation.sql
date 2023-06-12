with source as (

    select * from {{ source('tpch', 'nation') }}

)

select * from source