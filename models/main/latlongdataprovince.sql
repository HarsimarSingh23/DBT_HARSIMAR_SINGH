

with latlongdataprovice as (

    select * 
        from {{ref('latlongdata')}} 
        where LOCATION_LEVEL = 'Province'
    
)

select * from latlongdataprovice