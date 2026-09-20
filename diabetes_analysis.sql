SELECT*
FROM diabetes_clean_full
LIMIT10;
SELECT COUNT(*)
FROM DIABETES_CLEAN_FULL;
SELECT Diabetes_binary, COUNT(*)
FROM diabetes_clean_full
GROUP BY Diabetes_binary;
SELECT Diabetes_binary, HighBP, COUNT(*)
FROM diabetes_clean_full
GROUP BY Diabetes_binary, HighBP;
SELECT 
    HighBP,
    COUNT(*) AS people
FROM diabetes_clean_full
WHERE Diabetes_binary = 1
GROUP BY HighBP;
SELECT Diabetes_binary,
       AVG(BMI) AS average_bmi
FROM diabetes_clean_full
GROUP BY Diabetes_binary;
SELECT Age, COUNT(*) AS diabetes_count
FROM diabetes_clean_full
WHERE Diabetes_binary = 1
GROUP BY Age
ORDER BY diabetes_count DESC;
SELECT
    Diabetes_binary,
    CASE
        WHEN BMI >= 30 THEN 'BMI 30+'
        ELSE 'BMI under 30'
    END AS bmi_group,
    COUNT(*) AS people
FROM diabetes_clean_full
GROUP BY Diabetes_binary, bmi_group;