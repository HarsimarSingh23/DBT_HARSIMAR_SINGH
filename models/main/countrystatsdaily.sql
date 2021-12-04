

with countrystatsdaily as (

select * 
        from {{ref('dailystats')}} 
        where localtion_level = 'Country'

)

select * from countrystatsdaily 
