# ============================================================================
# STUDENT EXERCISE: Presenting Regression Results Using R
# ============================================================================
# Instructions: Complete all tasks below in 10 minutes
# This uses the mtcars dataset (built into R)
# ============================================================================

# Load libraries
library(tidyverse)
library(stargazer)
library(broom)

# Load data
data(mtcars)

# ============================================================================
# TASK 1: Explore the Data (2 minutes)
# ============================================================================
# What do we have?
head(mtcars)
dim(mtcars)  # How many rows and columns?

# ============================================================================
# TASK 2: Fit a Simple Regression Model (2 minutes)
# ============================================================================
# Predict: mpg (fuel efficiency) ~ hp (horsepower)
# Write code to fit the model

model <- lm(mpg ~ hp, data = mtcars)

# Look at the results
summary(model)

# ============================================================================
# TASK 3: Interpret the Results (3 minutes)
# ============================================================================
# Answer these questions:

# Q1: What is the coefficient for horsepower?
# A1: _______________________________________________________________

# Q2: Is this effect statistically significant? (Look at p-value)
# A2: _______________________________________________________________

# Q3: Interpret in plain English: What does the coefficient mean?
# A3: _______________________________________________________________

# Q4: What is the R²? What does it tell us?
# A4: _______________________________________________________________

# ============================================================================
# TASK 4: Visualize the Results (3 minutes)
# ============================================================================
# Option A: Create a coefficient plot
results <- tidy(model, conf.int = TRUE)

ggplot(results %>% filter(term != "(Intercept)"),
       aes(y = term, x = estimate)) +
  geom_point(size = 3, color = "darkblue") +
  geom_errorbar(aes(xmin = conf.low, xmax = conf.high), width = 0.2) +
  geom_vline(xintercept = 0, linetype = "dashed", color = "red") +
  labs(title = "Horsepower Effect on Fuel Efficiency",
       x = "Coefficient (MPG change per unit)",
       y = "Variable") +
  theme_minimal()

# ============================================================================
# BONUS: Make a Prediction
# ============================================================================
# If a car has 200 horsepower, what fuel efficiency do we predict?

new_car <- tibble(hp = 200)
prediction <- predict(model, newdata = new_car, se.fit = TRUE)

cat("For a car with 200 hp:\n")
cat("Predicted MPG:", round(prediction$fit, 2), "\n")
cat("Standard Error:", round(prediction$se.fit, 2), "\n")
