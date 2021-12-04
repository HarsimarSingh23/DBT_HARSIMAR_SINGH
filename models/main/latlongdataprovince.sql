with latlongdataprovince as (
select  LONGITUDE,
        LATITUDE,
        LOCATION,
        PROVINCE,
        LOCATION_LEVEL,
        TOTAL_CITIES,
        TOTAL_RURAL_VILLAGES,
        TOTAL_REGENCIES,
        TOTAL_DISTRICTS,
        TOTAL_URBAN_VILLAGES,
        avg(TOTAL_RECOVERED) as AVG_TOTAL_RECOVERED,
        avg(TOTAL_DEATHS) as AVG_TOTAL_DEATHS ,
        avg(TOTAL_ACTIVE_CASES) as AVG_TOTAL_ACTIVE_CASES,
        avg(TOTAL_CASES) as AVG_TOTAL_CASES 
    from {{ref('provincedata')}}
    group by 1,2,3,4,5,6,7,8,9,10
)

select * from latlongdataprovince