with countrypermillionstats as (
    select * from {{ref('countrypermillionstats')}}
),

ratefactorpermillion as (
    select * from {{ref('ratefactor')}} 
    join countrypermillionstats on countrypermillionstats._ROW = {{ref('ratefactor')}}._ROW
)

select 
    GROWTH_FACTOR_OF_NEW_DEATHS,
	 CASE_FATALITY_RATE, CASE_RECOVERED_RATE,
     GROWTH_FACTOR_OF_NEW_CASES,
     POPULATION_DENSITY,
     POPULATION,
     NEW_CASES_PER_MILLION,
    NEW_DEATHS_PER_MILLION,
    TOTAL_CASES_PER_MILLION,
    TOTAL_DEATHS_PER_MILLION,
    LOCALTION_LEVEL,
    DATE
     from ratefactorpermillion
