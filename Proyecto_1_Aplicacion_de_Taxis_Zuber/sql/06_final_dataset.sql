SELECT
    trips.start_ts,
    CASE
        WHEN weather_records.description LIKE '%rain%'
        OR weather_records.description LIKE '%storm%' THEN 'Bad'
        ELSE 'Good'
    END AS weather_conditions,
    trips.duration_seconds
FROM
    trips
    INNER JOIN weather_records on trips.start_ts = weather_records.ts
WHERE
    (
        pickup_location_id = 50
        AND dropoff_location_id = 63
    )
    AND EXTRACT(
        DOW
        FROM
            trips.start_ts
    ) = 6
ORDER BY
    trip_id;