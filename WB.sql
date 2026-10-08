--Overview of Table

SELECT TOP(10) * FROM international_debt;

--Finding the number of distinct countries

select count(DISTINCT country_name) as total_num_countries
from international_debt;

--Finding out the Distinct Debt Indicators
select distinct indicator_code as debt_indicators
from international_debt
order by debt_indicators

--Totaling the Amount of Debt owed by Countries

select sum(debt) as total_debt_USED
from international_debt;

-- Totaling the amount of debt owed by the countries

select sum(debt) as total_debt_usd
from international_debt;

--country with the highest debt
select top(1) with ties country_name, round(sum(debt/1000000000),2) as total_debt_billion_usd
from international_debt
group by country_name
order by total_debt_billion_USD desc

-- Average Amount of Debt across indicators

select indicator_code, indicator_name, round(avg(debt)/100000000,2) as avg_debt_billion_usd
from international_debt
group by indicator_code, indicator_name
order by avg_debt_billion_usd desc;

--highest amount of principal repayments
select top(5) with ties country_name, round(debt/1000000000,2) as principal_repayment_debt_bill
from international_debt
where indicator_code = 'DT.AMT.DLXF.CD'
order by debt desc;

--the most common debt indicator

select top(1) with ties indicator_code, count(*) as country_count
from international_debt
group by indicator_code
order by country_count desc;

-- Other viable viable debt issues and conclusion:

--There are a total of six debt indicators in which all the countries listed in our dataset have taken debt. 
--The indicator DT.AMT.DLXF.CD is also there in the list. 
--So, this gives us a clue that all these countries are suffering from a common economic issue. 
--But that is not the end of the story, a part of the story rather.

--Let's change tracks from debt_indicators now and focus on the amount of debt again. 
--Let's find out the maximum amount of debt across the indicators along with the respective country names. 
--With this, we will be in a position to identify the other plausible economic issues a country might be going through. 
--By the end of this section, we will have found out the debt indicators in which a country owes its highest debt.



with max_debt_country as
(
select country_name, max(debt) as max_debt
from international_debt
group by country_name
)
select i.country_name, i.indicator_code, round(i.debt/1000000000,2) as debt_billion_usd
from international_debt i
inner join max_debt_country
on i.country_name = max_debt_country.country_name
and max_debt_country.max_debt = i.debt
order by debt_billion_usd desc;
