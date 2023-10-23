
## Along this sheet I wanna see if the same users are included in all datasets

SELECT 
  COUNT(DISTINCT(Id)) AS activity_daily_users,
FROM
  `my-capstone-project-401514.Fitbit_datasets.activity_daily` ; # 33 users


SELECT 
  COUNT(DISTINCT(Id)) AS intensities_daily_users,
FROM
  `my-capstone-project-401514.Fitbit_datasets.intensities_daily`; # 33 users


SELECT 
  COUNT(DISTINCT(Id)) AS sleep_day_users,
FROM
  `my-capstone-project-401514.Fitbit_datasets.sleep_day`; # 24 users


SELECT 
  COUNT(DISTINCT(Id)) AS heartrate_users,
FROM
  `my-capstone-project-401514.Fitbit_datasets.heartrate` ; # 14 users


SELECT 
  COUNT(DISTINCT(Id)) AS weight_users,
FROM
  `my-capstone-project-401514.Fitbit_datasets.weight_df` ; # 8 users


# We have 33 users in 3 datasets, 24 in the sleep_dataset, 14 in the heartrate_dataset andd 8 in the weight_dataset
# Info is limited, maybe the users did not use the device and that's why there is no data, eventhough I'll continue
