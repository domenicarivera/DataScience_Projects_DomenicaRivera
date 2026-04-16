SELECT
    weather_records.ts,
    CASE
        WHEN weather_records.description LIKE '%rain%'
        OR weather_records.description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions
FROM
    weather_records;