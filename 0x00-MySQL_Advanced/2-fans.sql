-- Task : Rank country origins of bands by number of fans
-- This script ranks origin of bands by the total number of unique fans
SELECT origin, SUM(fans) as nb_fans FROM metal_bands
GROUP BY origin ORDER BY nb_fans DESC;
