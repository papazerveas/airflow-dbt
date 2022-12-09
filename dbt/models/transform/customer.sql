{{
    config(
        materialized='incremental'
        , unique_key = 'ID' 
    )
}}

SELECT ID 
    , FIRST_NAME
    , LAST_NAME
    , birthdate
    , membership_no
FROM {{ ref('customers') }}


{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  -- will append only new ids
  where ID > (select max(ID) from {{ this }})

{% endif %}


--- for slow changing dimentions Type 1 and 2
--- see this: https://servian.dev/modelling-type-1-2-slowly-changing-dimensions-with-dbt-1b80078f290a