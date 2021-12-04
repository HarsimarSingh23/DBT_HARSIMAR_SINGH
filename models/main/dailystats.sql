{{config(materialized = 'table' )}}

select  TOTAL_RECOVERED as total_recoveries, 
        TOTAL_DEATHS as total_deaths,
        TOTAL_ACTIVE_CASES as total_active_cases,
        NEW_RECOVERED as new_recoveries,
        NEW_DEATHS as new_deaths,
        NEW_CASES as new_cases,
        NEW_ACTIVE_CASES as new_active_cases,
        TOTAL_CASES as total_cases,
        LOCATION_LEVEL as localtion_level,
        cast(DATE as date) as DATE from FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS."COVID_19_INDONESIA_HARSIMAR_SINGH"
