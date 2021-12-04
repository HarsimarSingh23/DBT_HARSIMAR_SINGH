with ratefactor as (
select 
    _ROW,
    GROWTH_FACTOR_OF_NEW_DEATHS,
    CASE_FATALITY_RATE,
    CASE_RECOVERED_RATE, 
    GROWTH_FACTOR_OF_NEW_CASES,
    POPULATION_DENSITY,
    POPULATION
    from {{ref('countrydata')}}
)
select * from ratefactor