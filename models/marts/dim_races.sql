{# TODO: Create a dimension table for races
   - Use SELECT DISTINCT to deduplicate
   - I let you decide which columns to include
   - Reference the staging model with {{ ref('stg_race_results') }} #}

SELECT DISTINCT
    race_id,
    event_id,
    race_description,
    discipline_id,
    cat_id,
    km,
    start_time,
    status_text,
    start_group
FROM {{ ref('stg_race_results') }}
