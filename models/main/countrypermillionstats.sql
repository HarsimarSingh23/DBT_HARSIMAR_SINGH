select  
    _ROW,
    NEW_CASES_PER_MILLION as new_cases_per_million,
    NEW_DEATHS_PER_MILLION as new_deaths_per_million,
    TOTAL_CASES_PER_MILLION as total_cases_per_million,
    TOTAL_DEATHS_PER_MILLION as total_deaths_per_million,
    LOCATION_LEVEL as localtion_level,
    cast(DATE as date) DATE
    from {{ref('countrydata')}}