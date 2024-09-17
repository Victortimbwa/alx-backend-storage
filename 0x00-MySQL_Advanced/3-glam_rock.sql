-- Task : Write SQL script that that lists bands with Glam rock
-- This script lists all bands with Glam rock ranked by longevity
-- Uses formed and split to compute lifespan
SELECT band_name, (IFNULL(split, 2022) - formed)
AS lifespan FROM metal_bands WHERE style LIKE %Glam rock% ORDER BY lifespan DESC;
