select * from employee_layoff_analysis
limit 10;

Questions:

-- 1. How many employees are available in the dataset?
select count(*) as total_employees
from employee_layoff_analysis;


-- 2. How many employees belong to each industry?
select industry, count(*) as total_employees
from employee_layoff_analysis
group by industry
order by total_employees desc;

-- 3. Which company size employs the highest number of employees?
select company_size, count(*) as highest_number_employees
from employee_layoff_analysis
group by company_size
order by highest_number_employees desc
limit 1;


-- 4. What is the distribution of employees across different job levels?
select job_level, count(*) as employees_per_job_level
from employee_layoff_analysis
group by job

-- 5. How many employees belong to each education level?
select education_level, count(*) as employees_count
from employee_layoff_analysis
group by education_level
order by employees_count desc;


-- 6. What percentage of employees fall into Low, Medium, and High layoff risk categories?
select layoff_risk, count(*) as employees_count,
		round(count(*) * 100.0 / (select count(*) from employee_layoff_analysis), 2)
from employee_layoff_analysis
group by layoff_risk
order by employees_count desc;

-- 7. Which industries have the highest average routine task percentage?
select industry, round(avg(routine_task_percentage), 2) as avg_routine_task_perc
from employee_layoff_analysis
group by industry
order by avg_routine_task_perc desc;


-- 8. Which job roles have the highest average automation percentage?
select job_role, round(avg(tasks_automated_percentage), 2) as avg_automated_task_perc
from employee_layoff_analysis
group by job_role
order by avg_automated_task_perc desc;



-- 9. Which industries have the highest AI adoption level?
select industry, count(*) as highest_ai_adoption
from employee_layoff_analysis
where ai_adoption_level = 'High'
group by industry
order by highest_ai_adoption desc;


-- 10. Which company size provides the highest average AI training hours?
select company_size, round(avg(ai_training_hours), 2) as highest_ai_training_hours
from employee_layoff_analysis
group by company_size
order by highest_ai_training_hours desc;




-- 11. Which job levels use the highest number of AI tools?
select job_level, round(avg(number_of_ai_tools_used), 2) as avg_number_of_ai_tool
from employee_layoff_analysis
group by job_level
order by avg_number_of_ai_tool desc;



-- 12. Which industries have employees with the highest creativity requirements?
select industry, round(avg(creativity_requirement), 2) as avg_creativity_requirement
from employee_layoff_analysis
group by industry
order by avg_creativity_requirement desc;


-- 13. Which industries are at the highest average layoff risk?
select industry,
		round(avg(case
			when layoff_risk = 'Low' then 1
			when layoff_risk = 'Medium' then 2
			when layoff_risk = 'High' then 3
		end),2) as avg_layoff_risk
from employee_layoff_analysis
group by industry
order by avg_layoff_risk desc;




-- 14. Which job roles have the highest proportion of High layoff risk employees?
select job_role,
		count(case when layoff_risk = 'High' then 1 end) as highest_risk_employee,
		count(*) as total_employee,
		round(count(case when layoff_risk = 'High' then 1 end) * 100.0 / count(*), 2) as high_risk_percentage
from employee_layoff_analysis
group by job_role
order by high_risk_percentage desc;




-- 15. Which company sizes have the highest percentage of High layoff risk employees?
select company_size,
		count(case when layoff_risk = 'High' then 1 end) as highest_risk_employee,
		count(*) as total_employee,
		round(count(case when layoff_risk = 'High' then 1 end) * 100.0 / count(*), 2) as high_risk_percentage
from employee_layoff_analysis
group by company_size
order by high_risk_percentage desc;



-- 16. Which education levels are most associated with High layoff risk?
select education_level,
		count(case when layoff_risk = 'High' then 1 end) as high_layoff_risk,
		count(*) as total_count,
		round(count(case when layoff_risk = 'High' then 1 end) * 100.0 / count(*), 2) as high_layoff_risk_perc
from employee_layoff_analysis
group by education_level
order by high_layoff_risk_perc desc;


-- 17. Rank industries based on their Reskilling Priority Score by combining average layoff risk,
	-- task automation percentage, and AI training hours to identify which industries HR should prioritize for employee reskilling.
with industry_metric as(
	select industry,
			round(avg(case when layoff_risk = 'High' then 3
					when layoff_risk = 'Medium' then 2
					when layoff_risk = 'Low' then 1
			end),2) as avg_layoff_risk,
			round(avg(tasks_automated_percentage), 2) as avg_task_automated,
			round(avg(ai_training_hours), 2) as avg_ai_training_hours
	from employee_layoff_analysis
	group by industry
)

select industry, avg_layoff_risk, avg_task_automated, avg_ai_training_hours,
		round((avg_layoff_risk * 0.50)
		+ (avg_task_automated * 0.30)
		- (avg_ai_training_hours * 0.20),2) as reskilling_priority_score
from industry_metric
order by reskilling_priority_score desc;

-- 18. Rank the top 5 job roles with the highest average layoff risk score.
select job_role, 
	round(count(case when layoff_risk = 'High' then 1 end) * 100.0 / count(*), 2) as highest_layoff_perc
from employee_layoff_analysis
group by job_role
order by highest_layoff_perc desc
limit 5;



-- 19. Identify employees whose AI training hours are below the company average but whose layoff risk is High.
select
    age,
    education_level,
    industry,
    job_role,
    company_size,
    job_level,
    ai_training_hours,
    layoff_risk
from employee_layoff_analysis
where ai_training_hours < (
        select avg(ai_training_hours)
        from employee_layoff_analysis
)
and layoff_risk = 'High'
order by ai_training_hours asc;


-- 20. Create a workforce risk summary showing, for each industry:
	-- Total Employees
	-- Average Routine Task Percentage
	-- Average AI Adoption Level
	-- Average AI Training Hours
	-- Percentage of High Layoff Risk Employees 

select
    industry, count(*) as total_employees,
    round(avg(routine_task_percentage),2) as avg_routine_task_percentage,
    round(avg(case
                when ai_adoption_level = 'Low' then 1
                when ai_adoption_level = 'Medium' then 2
                when ai_adoption_level = 'High' then 3
            end),2) as avg_ai_adoption_level,
    round(avg(ai_training_hours),2) as avg_ai_training_hours,
    round(count(case when layoff_risk='High' then 1 end) * 100.0 / count(*),2) as high_layoff_risk_percentage
from employee_layoff_analysis
group by industry
order by high_layoff_risk_percentage desc;