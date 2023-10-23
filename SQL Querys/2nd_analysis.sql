SELECT # diferencia en el numero total de pasos de activity_daily y steps_daily
  MIN(TotalSteps),
  MAX(TotalSteps),
  AVG(TotalSteps)
FROM `my-capstone-project-401514.Fitbit_datasets.activity_daily`;

------------------------------------------------------------------------------------------------------------

# Here I categorize the type of user, dividing them into:
### Sedentary, Lightly Active, Fairly Active and Active

# I'm counting the Average of steps daily

SELECT  # users with less than 5000 steps  
  Id,
  AVG(TotalSteps) AS AvgTotalSteps
FROM `my-capstone-project-401514.Fitbit_datasets.activity_daily`
GROUP BY Id
HAVING AVG(TotalSteps) < 5000
ORDER BY AvgTotalSteps DESC;
# Sedentary -> 8 users

SELECT  # users with more than 5000 steps and less than 9999 steps daily 
  Id,
  AVG(TotalSteps) AS AvgTotalSteps
FROM `my-capstone-project-401514.Fitbit_datasets.activity_daily`
GROUP BY Id
HAVING AVG(TotalSteps) > 5000 AND AVG(TotalSteps) < 9999
ORDER BY AvgTotalSteps DESC;

# Ligthly Active  -> 18 users


SELECT  # useres with more than 10000 steps and less than 12499 steps daily 
  Id,
  AVG(TotalSteps) AS AvgTotalSteps
FROM `my-capstone-project-401514.Fitbit_datasets.activity_daily`
GROUP BY Id
HAVING AVG(TotalSteps) > 10000 AND AVG(TotalSteps) < 12499
ORDER BY AvgTotalSteps DESC;

# Fairly Active -> 5 users


SELECT  # users with more than 12500 steps daily
  Id,
  AVG(TotalSteps) AS AvgTotalSteps
FROM `my-capstone-project-401514.Fitbit_datasets.activity_daily`
GROUP BY Id
HAVING AVG(TotalSteps) >= 12500
ORDER BY AvgTotalSteps DESC;