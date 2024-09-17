-- Task : Rank country origins of bands by number of fans
-- This query ranks origin of bands by the total number of unique fans
SELECT origin, SUM(nb_fans) as nb_fans FROM metal_bands
GROUP BY origin ORDER BY nb_fans DESC;
