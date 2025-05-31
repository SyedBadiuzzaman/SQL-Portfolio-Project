select * from real_estate;
-- Checking first column
select * from real_estate
where uniqueid is null;
-- Checking 2nd column
select * from real_estate
where parcelid is null;
-- Checking 3rd column
select * from real_estate
where landuse is null;
-- ----------------------------------Checking 4th column
select * from real_estate
where propertyaddress is null;
-- know checking the address if it is avaliable
select *
from real_estate a
join real_estate b
on a.parcelid = b.parcelid
where a.uniqueid != b.uniqueid
and a.propertyaddress is null;
-- know Updating the table
UPDATE real_estate a
SET PropertyAddress = (
    SELECT b.PropertyAddress
    FROM real_estate b
    WHERE a.ParcelID = b.ParcelID
      AND b.PropertyAddress IS NOT NULL
      AND a.UniqueID != b.UniqueID
    LIMIT 1
)
WHERE a.PropertyAddress IS NULL;


-- ----------------------------------Checking 5th column
select * from real_estate
where saledate is null;

-- ----------------------------------Checking 6th column
select * from real_estate;
where saleprice is null;
ALTER TABLE real_estate
ALTER COLUMN saleprice TYPE DECIMAL(15,1);
UPDATE real_estate
SET saleprice = ROUND(saleprice,1);
----------------------------------Checking 7th column
select * from real_estate;
where legalreferen is null;
----------------------------------Checking 8th column
select  ownername from real_estate
where ownername != 'Unknown';
-- update 
UPDATE real_estate
SET ownername = 'Unknown'
WHERE ownername IS NULL
---------------------------------------next ownerad
SELECT *
FROM real_estate a
  where owneraddress IS NULL
;




