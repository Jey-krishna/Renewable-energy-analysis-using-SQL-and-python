select *
from cleaned_energy_dataser ced ;

-- which type of renewable energy has the highest  capacity

select Type_of_Renewable_Energy , format(sum(Installed_Capacity_MW), 2)as total_capacity
from cleaned_energy_dataser ced 
group by Type_of_Renewable_Energy 
order by total_capacity desc;

-- which founding sources have created the most number of jobs

select Funding_Sources, sum(Jobs_Created) as total_jobs
from cleaned_energy_dataser ced 
group by Funding_Sources 
order by total_jobs desc;

-- which energy type produces highest energy

select Type_of_Renewable_Energy , format(sum(Energy_Production_MWh), 2) as total_energy_production
from cleaned_energy_dataser ced 
group by Type_of_Renewable_Energy 
order by total_energy_production desc;

-- which type  of energy have highest consumption_ratio

select Type_of_Renewable_Energy , Format(sum(Energy_Production_MWh) / sum(Energy_Consumption_MWh), 2) as consumption_ratio
from cleaned_energy_dataser
group by Type_of_Renewable_Energy 
order by consumption_ratio desc;

-- which founding sources have more renewable energy installed

select Funding_Sources ,count(Type_of_Renewable_Energy) as total_Energy_installed
from cleaned_energy_dataser ced 
group by Funding_Sources 
order by total_Energy_installed desc;

-- Distribution of founding sources and type of nenewable energy vs number of installed

select Funding_sources, Type_of_Renewable_Energy ,count(Type_of_Renewable_Energy) as total_Energy_installed
from cleaned_energy_dataser 
group by Type_of_Renewable_Energy, 
    Funding_Sources
order by total_Energy_installed desc;


-- which type of energy have highest investment and incentives

select Type_of_Renewable_Energy, sum(Initial_Investment_USD) as total_investment , sum(Financial_Incentives_USD) as total_incentives
from cleaned_energy_dataser ced 
group by Type_of_Renewable_Energy 
order by total_investment, total_incentives desc;

-- distribution of average GHG emissin and air pollution index

select Type_of_Renewable_Energy , format(avg(GHG_Emission_Reduction_tCO2e), 2) as average_GHG_Emission, format(avg(Air_Pollution_Reduction_Index), 2) as air_pollution_index
from cleaned_energy_dataser ced 
group by Type_of_Renewable_Energy 
order by average_GHG_Emission, air_pollution_index desc;

-- types of energy and its efficiency

select Type_of_Renewable_Energy, format(avg(Storage_Efficiency_Percentage), 2)as average_efficiency 
from cleaned_energy_dataser ced 
group by Type_of_Renewable_Energy 
order by average_efficiency desc;




















