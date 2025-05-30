select distinct(location) from covid_deth
order by 1 asc;
-- Global COVID-19 Trends Over Time insight
SELECT date, 
       SUM(new_cases) AS total_new_cases,
       SUM(new_deaths) AS totselal_new_deaths
FROM covid_deth
where new_cases is not null and new_deaths is not null
GROUP BY date
ORDER BY date;
-- Top 10 Countries with Highest Total Cases insight

SELECT location , MAX(total_cases) AS total_cases
FROM covid_deth
where total_cases is not null
GROUP BY location
ORDER BY total_cases DESC
LIMIT 10;
-- : Testing Intensity vs Positive Rate insight
SELECT location, 
       AVG(positive_rate) AS avg_positive_rate, 
       MAX(total_tests_per_thousand) AS test_intensity
FROM covid_dethd
WHERE positive_rate is not null and total_tests_per_thousand is not null
GROUP BY location
ORDER BY avg_positive_rate DESC;
-- identify the effect of lockdown on new cases
SELECT location,
       floor(AVG(COALESCE(stringency_index, 0))) AS avg_stringency,
       floor(AVG(COALESCE(new_cases_smoothed, 0))) AS avg_case_report
FROM covid_deth
WHERE new_cases_smoothed IS NOT NULL
GROUP BY location
ORDER BY avg_stringency DESC;
-- Impact of Elderly Population on Deaths insight
SELECT location, 
       AVG(aged_65_older) AS aged_65_plus,
       MAX(total_deaths_per_million) AS death_rate
FROM covid_deth
WHERE aged_65_older is not null and total_deaths_per_million is not null 
GROUP BY location
ORDER BY aged_65_plus DESC;

select * from covid_statistics;

--Which countries vaccinated the highest % of their population?
SELECT location,
       MAX(people_fully_vaccinated_per_hundred) AS fully_vaccinated_percent
FROM covid_statistics
WHERE people_fully_vaccinated_per_hundred IS NOT NULL
GROUP BY location
ORDER BY fully_vaccinated_percent DESC
LIMIT 10;
-- using view for both tabel
CREATE VIEW covid_full_data AS
SELECT 
    t1.location,
    t1.date,
    t1.total_cases,
    t1.new_cases,
    t1.total_deaths,
    t1.reproduction_rate,
    t2.new_tests,
    t2.positive_rate,
    t2.total_vaccinations,
    t2.people_fully_vaccinated,
    t2.hospital_beds_per_thousand,
    t2.gdp_per_capita
FROM covid_deth t1
JOIN covid_statistics t2
    ON t1.location = t2.location AND t1.date = t2.date
WHERE t1.new_cases IS NOT NULL AND t2.total_vaccinations IS NOT NULL;

-- How fast were countries vaccinating people daily?

SELECT location,
       MAX(new_vaccinations_smoothed_per_million) AS peak_daily_vaccination_rate
FROM covid_statistics
WHERE new_vaccinations_smoothed_per_million IS NOT NULL
GROUP BY location
ORDER BY peak_daily_vaccination_rate DESC
LIMIT 10;

-- Do countries with more hospital beds have lower death rates?
SELECT location,
       MAX(hospital_beds_per_thousand) AS hospital_capacity,
       MAX(total_deaths_per_million) AS death_rate
FROM covid_deth
WHERE hospital_beds_per_thousand IS NOT NULL
  AND total_deaths_per_million IS NOT NULL
GROUP BY location
ORDER BY hospital_capacity DESC;
-- Did richer countries vaccinate more?
SELECT location,
	       MAX(gdp_per_capita) AS gdp,
       MAX(people_fully_vaccinated) AS vaccinated
FROM covid_deth
	where gdp_per_capita is not null and people_fully_vaccinated is not null
GROUP BY location
ORDER BY gdp DESC;
--  Did countries with more hospital beds have fewer deaths?
SELECT location,
       MAX(hospital_beds_per_thousand) AS beds,
       MAX(total_deaths) AS total_deaths
FROM covid_deth
where hospital_beds_per_thousand is not null and total_deaths is not null
GROUP BY location
ORDER BY beds DESC;
--Vaccination vs. New Cases Over Time (per Country)
SELECT date,
       location,
       ROUND(AVG(new_cases),1) AS avg_cases,
      ROUND( AVG(people_fully_vaccinated),1) AS avg_vaccinated
FROM covid_full_data
where new_cases is not null and people_fully_vaccinated is not null
GROUP BY location, date
ORDER BY date;






