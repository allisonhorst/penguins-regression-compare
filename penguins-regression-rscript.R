library(palmerpenguins)
library(tidyverse)

# All species model: 
bill_lm <- lm(bill_depth_mm ~ bill_length_mm, data = penguins)

summary(bill_lm)

# Chinstrap only model: 
chinstraps <- penguins |> filter(species == "Chinstrap")

chinstrap_bill_lm <- lm(bill_depth_mm ~ bill_length_mm, data = chinstraps)

summary(chinstrap_bill_lm)
