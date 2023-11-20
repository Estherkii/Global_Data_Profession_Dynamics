CREATE DATABASE IF NOT EXISTS tech_salaries;

SET SQL_SAFE_UPDATES = 0;

USE tech_salaries;

-- Checking unique values in experience_level

SELECT DISTINCT(experience_level)
FROM ds_salaries;

-- Updating experience_level:

UPDATE ds_salaries
SET experience_level = 
    CASE 
        WHEN experience_level = 'SE' THEN 'Senior'
        WHEN experience_level = 'MI' THEN 'Mid'
        WHEN experience_level = 'EN' THEN 'Junior'
        WHEN experience_level = 'EX' THEN 'Experienced'
        ELSE experience_level
    END;

-- Checking unique values of employment_type

SELECT DISTINCT employment_type
FROM ds_salaries;

-- Updating employment_type column

UPDATE ds_salaries
SET employment_type = 
    CASE 
        WHEN employment_type = 'FT' THEN 'Full-time'
        WHEN employment_type = 'CT' THEN 'Contractor'
        WHEN employment_type = 'FL' THEN 'Freelance'
        WHEN employment_type = 'PT' THEN 'Part-time'
		ELSE employment_type
    END;

-- Updating company_size column

UPDATE ds_salaries
SET company_size = 
	CASE 
		WHEN company_size = 'L' THEN 'Large'
        WHEN company_size = 'M' THEN 'Medium'
        WHEN company_size = 'S' THEN 'Small'
		ELSE company_size
	END;

-- Checking unique values of employee_residence
SELECT DISTINCT(employee_residence) FROM ds_salaries;

UPDATE ds_salaries
SET employee_residence = 
    CASE 
        WHEN employee_residence = 'ES' THEN 'Spain'
        WHEN employee_residence = 'US' THEN 'United States'
        WHEN employee_residence = 'CA' THEN 'Canada'
        WHEN employee_residence = 'DE' THEN 'Germany'
        WHEN employee_residence = 'GB' THEN 'United Kingdom'
        WHEN employee_residence = 'NG' THEN 'Nigeria'
        WHEN employee_residence = 'IN' THEN 'India'
        WHEN employee_residence = 'HK' THEN 'Hong Kong'
        WHEN employee_residence = 'PT' THEN 'Portugal'
        WHEN employee_residence = 'NL' THEN 'Netherlands'
        WHEN employee_residence = 'CH' THEN 'Switzerland'
        WHEN employee_residence = 'CF' THEN 'Central African Republic'
        WHEN employee_residence = 'FR' THEN 'France'
        WHEN employee_residence = 'AU' THEN 'Australia'
        WHEN employee_residence = 'FI' THEN 'Finland'
        WHEN employee_residence = 'UA' THEN 'Ukraine'
        WHEN employee_residence = 'IE' THEN 'Ireland'
        WHEN employee_residence = 'IL' THEN 'Israel'
        WHEN employee_residence = 'GH' THEN 'Ghana'
        WHEN employee_residence = 'AT' THEN 'Austria'
        WHEN employee_residence = 'CO' THEN 'Colombia'
        WHEN employee_residence = 'SG' THEN 'Singapore'
        WHEN employee_residence = 'SE' THEN 'Sweden'
        WHEN employee_residence = 'SI' THEN 'Slovenia'
        WHEN employee_residence = 'MX' THEN 'Mexico'
        WHEN employee_residence = 'UZ' THEN 'Uzbekistan'
        WHEN employee_residence = 'BR' THEN 'Brazil'
        WHEN employee_residence = 'TH' THEN 'Thailand'
        WHEN employee_residence = 'HR' THEN 'Croatia'
        WHEN employee_residence = 'PL' THEN 'Poland'
        WHEN employee_residence = 'KW' THEN 'Kuwait'
        WHEN employee_residence = 'VN' THEN 'Vietnam'
        WHEN employee_residence = 'CY' THEN 'Cyprus'
        WHEN employee_residence = 'AR' THEN 'Argentina'
        WHEN employee_residence = 'AM' THEN 'Armenia'
        WHEN employee_residence = 'BA' THEN 'Bosnia and Herzegovina'
        WHEN employee_residence = 'KE' THEN 'Kenya'
        WHEN employee_residence = 'GR' THEN 'Greece'
        WHEN employee_residence = 'MK' THEN 'North Macedonia'
        WHEN employee_residence = 'LV' THEN 'Latvia'
        WHEN employee_residence = 'RO' THEN 'Romania'
        WHEN employee_residence = 'PK' THEN 'Pakistan'
        WHEN employee_residence = 'IT' THEN 'Italy'
        WHEN employee_residence = 'MA' THEN 'Morocco'
        WHEN employee_residence = 'LT' THEN 'Lithuania'
        WHEN employee_residence = 'BE' THEN 'Belgium'
        WHEN employee_residence = 'AS' THEN 'American Samoa'
        WHEN employee_residence = 'IR' THEN 'Iran'
        WHEN employee_residence = 'HU' THEN 'Hungary'
        WHEN employee_residence = 'SK' THEN 'Slovakia'
        WHEN employee_residence = 'CN' THEN 'China'
        WHEN employee_residence = 'CZ' THEN 'Czech Republic'
        WHEN employee_residence = 'CR' THEN 'Costa Rica'
        WHEN employee_residence = 'TR' THEN 'Turkey'
        WHEN employee_residence = 'CL' THEN 'Chile'
        WHEN employee_residence = 'PR' THEN 'Puerto Rico'
        WHEN employee_residence = 'DK' THEN 'Denmark'
        WHEN employee_residence = 'BO' THEN 'Bolivia'
        WHEN employee_residence = 'PH' THEN 'Philippines'
        WHEN employee_residence = 'DO' THEN 'Dominican Republic'
        WHEN employee_residence = 'EG' THEN 'Egypt'
        WHEN employee_residence = 'ID' THEN 'Indonesia'
        WHEN employee_residence = 'AE' THEN 'United Arab Emirates'
        WHEN employee_residence = 'MY' THEN 'Malaysia'
        WHEN employee_residence = 'JP' THEN 'Japan'
        WHEN employee_residence = 'EE' THEN 'Estonia'
        WHEN employee_residence = 'HN' THEN 'Honduras'
        WHEN employee_residence = 'TN' THEN 'Tunisia'
        WHEN employee_residence = 'RU' THEN 'Russia'
        WHEN employee_residence = 'DZ' THEN 'Algeria'
        WHEN employee_residence = 'IQ' THEN 'Iraq'
        WHEN employee_residence = 'BG' THEN 'Bulgaria'
        WHEN employee_residence = 'JE' THEN 'Jersey'
        WHEN employee_residence = 'RS' THEN 'Serbia'
        WHEN employee_residence = 'NZ' THEN 'New Zealand'
        WHEN employee_residence = 'MD' THEN 'Moldova'
        WHEN employee_residence = 'LU' THEN 'Luxembourg'
        WHEN employee_residence = 'MT' THEN 'Malta'
        ELSE employee_residence
    END;

-- Checkign unique values of company_location
SELECT DISTINCT (company_location) FROM ds_salaries;

UPDATE ds_salaries
SET company_location = 
    CASE 
        WHEN company_location = 'ES' THEN 'Spain'
        WHEN company_location = 'US' THEN 'United States'
        WHEN company_location = 'CA' THEN 'Canada'
        WHEN company_location = 'DE' THEN 'Germany'
        WHEN company_location = 'GB' THEN 'United Kingdom'
        WHEN company_location = 'NG' THEN 'Nigeria'
        WHEN company_location = 'IN' THEN 'India'
        WHEN company_location = 'HK' THEN 'Hong Kong'
        WHEN company_location = 'NL' THEN 'Netherlands'
        WHEN company_location = 'CH' THEN 'Switzerland'
        WHEN company_location = 'CF' THEN 'Central African Republic'
        WHEN company_location = 'FR' THEN 'France'
        WHEN company_location = 'FI' THEN 'Finland'
        WHEN company_location = 'UA' THEN 'Ukraine'
        WHEN company_location = 'IE' THEN 'Ireland'
        WHEN company_location = 'IL' THEN 'Israel'
        WHEN company_location = 'GH' THEN 'Ghana'
        WHEN company_location = 'CO' THEN 'Colombia'
        WHEN company_location = 'SG' THEN 'Singapore'
        WHEN company_location = 'AU' THEN 'Australia'
        WHEN company_location = 'SE' THEN 'Sweden'
        WHEN company_location = 'SI' THEN 'Slovenia'
        WHEN company_location = 'MX' THEN 'Mexico'
        WHEN company_location = 'BR' THEN 'Brazil'
        WHEN company_location = 'PT' THEN 'Portugal'
        WHEN company_location = 'RU' THEN 'Russia'
        WHEN company_location = 'TH' THEN 'Thailand'
        WHEN company_location = 'HR' THEN 'Croatia'
        WHEN company_location = 'VN' THEN 'Vietnam'
        WHEN company_location = 'EE' THEN 'Estonia'
        WHEN company_location = 'AM' THEN 'Armenia'
        WHEN company_location = 'BA' THEN 'Bosnia and Herzegovina'
        WHEN company_location = 'KE' THEN 'Kenya'
        WHEN company_location = 'GR' THEN 'Greece'
        WHEN company_location = 'MK' THEN 'North Macedonia'
        WHEN company_location = 'LV' THEN 'Latvia'
        WHEN company_location = 'RO' THEN 'Romania'
        WHEN company_location = 'PK' THEN 'Pakistan'
        WHEN company_location = 'IT' THEN 'Italy'
        WHEN company_location = 'MA' THEN 'Morocco'
        WHEN company_location = 'PL' THEN 'Poland'
        WHEN company_location = 'AL' THEN 'Albania'
        WHEN company_location = 'AR' THEN 'Argentina'
        WHEN company_location = 'LT' THEN 'Lithuania'
        WHEN company_location = 'AS' THEN 'American Samoa'
        WHEN company_location = 'CR' THEN 'Costa Rica'
        WHEN company_location = 'IR' THEN 'Iran'
        WHEN company_location = 'BS' THEN 'Bahamas'
        WHEN company_location = 'HU' THEN 'Hungary'
        WHEN company_location = 'AT' THEN 'Austria'
        WHEN company_location = 'SK' THEN 'Slovakia'
        WHEN company_location = 'CZ' THEN 'Czech Republic'
        WHEN company_location = 'TR' THEN 'Turkey'
        WHEN company_location = 'PR' THEN 'Puerto Rico'
        WHEN company_location = 'DK' THEN 'Denmark'
        WHEN company_location = 'BO' THEN 'Bolivia'
        WHEN company_location = 'PH' THEN 'Philippines'
        WHEN company_location = 'BE' THEN 'Belgium'
        WHEN company_location = 'ID' THEN 'Indonesia'
        WHEN company_location = 'EG' THEN 'Egypt'
        WHEN company_location = 'AE' THEN 'United Arab Emirates'
        WHEN company_location = 'LU' THEN 'Luxembourg'
        WHEN company_location = 'MY' THEN 'Malaysia'
        WHEN company_location = 'HN' THEN 'Honduras'
        WHEN company_location = 'JP' THEN 'Japan'
        WHEN company_location = 'DZ' THEN 'Algeria'
        WHEN company_location = 'IQ' THEN 'Iraq'
        WHEN company_location = 'CN' THEN 'China'
        WHEN company_location = 'NZ' THEN 'New Zealand'
        WHEN company_location = 'CL' THEN 'Chile'
        WHEN company_location = 'MD' THEN 'Moldova'
        WHEN company_location = 'MT' THEN 'Malta'
        ELSE company_location
    END;
    
-- Checking unique job_titles

SELECT DISTINCT(job_title) from ds_salaries;

ALTER TABLE ds_salaries
DROP COLUMN job_title_agrup;

-- Unifying job_titles

ALTER TABLE ds_salaries
ADD COLUMN job_title_agrup VARCHAR(255);

UPDATE ds_salaries
SET job_title_agrup = 
    CASE 
        -- Data Scientists
        WHEN job_title IN ('Principal Data Scientist', 'Data Scientist', 'ML Engineer', 
                           'Applied Scientist', 'Research Scientist', 'Data Analytics Manager', 
                           'Business Data Analyst', 'Applied Data Scientist', 'Staff Data Analyst', 
                           'Research Engineer', 'Data Modeler', 'Analytics Engineer', 
                           'Business Intelligence Engineer', 'Machine Learning Engineer', 
                           'Data Strategist', 'Head of Data Science', 'Director of Data Science', 
                           'Data Science Manager', 'Computer Vision Engineer', 'AI Developer', 
                           'Machine Learning Researcher', 'Data Science Lead', 'Machine Learning Software Engineer', 
                           'Principal Machine Learning Engineer', 'Data Analytics Engineer', 'Data Science Tech Lead', 
                           'Data Scientist Lead', 'Lead Machine Learning Engineer', 'Staff Data Scientist', 'Computer Vision Engineer', 'Applied Machine Learning Engineer') 
        THEN 'Data Scientists'

        -- Data Engineers
        WHEN job_title IN ('Data Engineer', 'ETL Engineer', 'Data DevOps Engineer', 
                           'Data Infrastructure Engineer', 'Software Data Engineer', 
                           'Cloud Data Engineer', 'Azure Data Engineer', 'Power BI Developer', 
                           'Cloud Data Architect', 'Data Operations Analyst', 'Marketing Data Analyst', 
                           'Product Data Scientist', 'Machine Learning Manager', 'ETL Developer', 
                           'Lead Data Engineer', 'Head of Machine Learning', 'Principal Data Analyst', 
                           'Principal Data Engineer', 'Finance Data Analyst', 'NLP Engineer', 
                           'Big Data Engineer', 'Data Analytics Consultant', 'Data Management Specialist') 
        THEN 'Data Engineers'

        -- Data Analysts
        WHEN job_title IN ('Data Analyst', 'BI Data Engineer', 'Data Specialist', 'Lead Data Analyst', 
                           'Director of Data Science', 'Machine Learning Scientist', 'MLOps Engineer', 
                           'AI Scientist', 'Autonomous Vehicle Technician', 'Applied Machine Learning Scientist', 
                           'Lead Data Scientist', 'Cloud Database Engineer', 'Financial Data Analyst', 
                           'Data Infrastructure Engineer', 'Software Data Engineer', 'AI Programmer', 
                           'Data Operations Engineer', 'BI Developer', 'Deep Learning Researcher', 'BI Analyst', 
                           'Data Science Consultant', 'Data Analytics Specialist', 'Machine Learning Infrastructure Engineer', 
                           'Insight Analyst', 'Deep Learning Engineer', 'Big Data Architect', 'Product Data Analyst', 
                           'Computer Vision Software Engineer', 'Azure Data Engineer', 'Marketing Data Engineer', 
                           'Data Analytics Lead', 'Data Lead', 'Data Science Engineer', 'Machine Learning Research Engineer', 
                           'NLP Engineer', 'Manager Data Management', 'Machine Learning Developer', 
                           '3D Computer Vision Researcher', 'Lead Data Analyst', 'Compliance Data Analyst', 
                           'BI Data Analyst', 'Data Quality Analyst') 
        THEN 'Data Analysts'

        -- Data Architect
        WHEN job_title IN ('Data Architect', 'Principal Data Architect') 
        THEN 'Data Architects'

        -- Data Manager
        WHEN job_title IN ('Data Manager', 'Head of Data') 
        THEN 'Data Managers'

        -- Default: For titles not listed above
        ELSE 'Other'
    END;

-- Checking company_location, is in Europe?

SELECT DISTINCT(company_location) FROM ds_salaries;

-- Creating a column europe

ALTER TABLE ds_salaries
DROP COLUMN Europe;

ALTER TABLE ds_salaries
ADD europe VARCHAR(20);

UPDATE ds_salaries
SET europe =
CASE  
	WHEN company_location IN ('Spain', 'Germany', 'Netherlands', 'France', 'Finland', 'Ireland', 'Sweden', 'Slovenia', 'Portugal', 'Croatia', 'Estonia', 'Greece', 'Latvia', 'Romania', 'Italy', 'Poland', 'Lithuania', 'Hungary', 'Austria', 'Slovakia', 'Czech Republic', 'Denmark', 'Belgium', 'Luxembourg', 'Malta')
THEN 'Yes' 
ELSE 'No'
END;

SELECT DISTINCT salary_currency
FROM ds_salaries
WHERE europe = 'Yes';


	