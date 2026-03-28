{# TODO: Create a dimension table for events
   - Use SELECT DISTINCT to deduplicate
   - I let you decide which columns to include
   - Reference the staging model with {{ ref('stg_race_results') }} #}

SELECT DISTINCT
    event_id,
    event_description,
    short_description,
    nat,
    level
FROM {{ ref('stg_race_results') }}
