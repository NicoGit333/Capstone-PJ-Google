SELECT           
  MIN(TotalSteps),  
  MAX(TotalSteps),
  AVG(TotalSteps)
FROM `my-capstone-project-401514.Fitbit_datasets.activity_daily`;

SELECT 
  MIN(TotalMinutesAsleep), 
  MAX(TotalMinutesAsleep),
  AVG(TotalMinutesAsleep)
FROM `my-capstone-project-401514.Fitbit_datasets.sleep_day`;

SELECT 
  MIN(BMI), 
  MAX(BMI),
  AVG(BMI)
FROM `my-capstone-project-401514.Fitbit_datasets.weight_df`;

SELECT 
  MIN(Value), 
  MAX(Value),
  AVG(Value)
FROM `my-capstone-project-401514.Fitbit_datasets.heartrate`;

SELECT
  Id,
  AVG(SedentaryMinutes) AS sedentary,
  AVG(LightlyActiveMinutes) AS lightly,
  AVG(FairlyActiveMinutes) AS fairly,
  AVG(VeryActiveMinutes) AS very_active   ## This query shows the users with more avg active minutes during the day
FROM
  `my-capstone-project-401514.Fitbit_datasets.intensities_daily`
GROUP BY Id
    ORDER BY
      very_Active DESC;

SELECT
  Id,
  AVG(SedentaryMinutes) AS sedentary,
  AVG(LightlyActiveMinutes) AS lightly, ## here we can see the more fairly active users
  AVG(FairlyActiveMinutes) AS fairly,   # fairly active exercise of 30 mins represents a healthy person 
  AVG(VeryActiveMinutes) AS very_active
FROM   
  `my-capstone-project-401514.Fitbit_datasets.intensities_daily`
GROUP BY Id
    ORDER BY
      fairly DESC