SELECT
    neighborhoods.neighborhood_id,
    neighborhoods.name
FROM
    neighborhoods
WHERE
    name LIKE '%Hare'
    OR name LIKE 'Loop';