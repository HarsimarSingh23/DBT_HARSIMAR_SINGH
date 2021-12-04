with countrystatsdaily2021 as (

select * 
        from {{ref('dailystats')}} 
        where localtion_level = 'Country' and
        cast(DATE as date) >= '2021-01-01'::date  

)

select * from countrystatsdaily2021
