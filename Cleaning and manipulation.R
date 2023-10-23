#First install the necessary packages for this project

install.packages("tidyverse")
install.packages("dplyr")
install.packages("janitor")
install.packages("here")
install.packages("skimr")

library(tidyverse)
library(dplyr)
library(janitor)
library(here)
library(skimr)


#Upload the data sets 

daily_activity_df <- read_csv("daily_activity_merged.csv")
daily_calories_df <- read_csv("daily_calories_merged.csv")
daily_intensities_df <- read_csv("daily_intensities_merged.csv")
heartrate_df <- read_csv("heartrate_seconds_merged.csv")
sleep_day_df <- read_csv("sleep_day_merged.csv")
steps_daily_df <- read_csv("daily_steps_merged.csv")
weight_df <- read_csv("weight_log_info_merged.csv")

# Cleaning steps 

# Column names cleaning
clean_names(daily_activity_df)
clean_names(daily_calories_df)
clean_names(daily_intensities_df)
clean_names(heartrate_df)
clean_names(sleep_day_df)
clean_names(steps_daily_df)
clean_names(weight_df)

# Removing unnecessary columns
sleep_day_df <- select(-TotalSleepRecords)
weight_df <- select(Id,Date,WeightKg,Fat,BMI)

# Removing the word 'AM' from date columns cause SQL does not read it
heartrate_df$Time <- gsub('AM',"",as.character(heartrate_df$Time))
sleep_day_df$SleepDay <- gsub('AM',"",as.character(sleep_day_df$SleepDay))

# Separate AM and PM
weigth_df <- separate(weigth_df, Date, into 
                      = c("DateTime", "Time"), sep = " (?=[^ ]+$)")



