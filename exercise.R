# ===========================================================================
# STUDENT EXERCISE: Presenting Regression Results Using R
# ===========================================================================
# Course:      Statistics for Business / Research Methods
# Topic:       Regression analysis and APA-style result presentation
# Dataset:     mtcars (built into R — no download needed)
# Time:        Approximately 10-15 minutes
# Handout:     See handout.qmd for full APA write-up templates
# ===========================================================================

# ---------------------------------------------------------------------------
# SETUP: Load required packages
# ---------------------------------------------------------------------------
# If you get "package not found" errors, run:
#   install.packages(c("tidyverse", "stargazer", "broom"))

library(tidyverse)  # Data manipulation and ggplot2 visualisation
library(stargazer)  # APA-style regression tables
library(broom)      # Convert model objects to tidy data frames
library(knitr)      # Table formatting

# ---------------------------------------------------------------------------
# PART 0: Explore the data
# ---------------------------------------------------------------------------

# View the first few rows
head(mtcars)

# Basic summary statistics
summary(mtcars[, c("mpg", "hp", "wt", "cyl")])

# How many observations are in the dataset?
nrow(mtcars)  # Should be 32

# ---------------------------------------------------------------------------
# PART 1: Fit a simple linear regression
# ---------------------------------------------------------------------------
# TASK: Predict fuel efficiency (mpg) from horsepower (hp)

model_hp <- lm(mpg ~ hp, data = mtcars)

# View the raw summary output
summary(model_hp)

# QUESTIONS:
# Q1. What is the coefficient for horsepower? Is it positive or negative?
# Q2. What does the p-value tell you about the relationship?
# Q3. What percentage of variance in mpg is explained by hp alone? (R-squared)

# ---------------------------------------------------------------------------
# PART 2: Fit a multiple linear regression
# ---------------------------------------------------------------------------
# TASK: Add weight (wt) and cylinders (cyl) as additional predictors

model_full <- lm(mpg ~ hp + wt + cyl, data = mtcars)

# Compare both models
summary(model_hp)
summary(model_full)

# QUESTIONS:
# Q4. Does adding wt and cyl improve R-squared? By how much?
# Q5. Is horsepower still significant when wt and cyl are included?
# Q6. Which model would you report and why?

# ---------------------------------------------------------------------------
# PART 3: Build an APA-style regression table using stargazer
# ---------------------------------------------------------------------------
# TASK: Produce a side-by-side comparison table of both models

stargazer(
  model_hp, model_full,
  type = "text",                           # Use "latex" for PDF output
  title = "Table 1",
  dep.var.labels = "Miles per Gallon (mpg)",
  covariate.labels = c("Horsepower", "Weight (1000 lbs)", "Cylinders"),
  column.labels = c("Model 1", "Model 2"),
  keep.stat = c("n", "rsq", "adj.rsq", "f"),
  notes = "Note. Standard errors in parentheses. Data: mtcars (N = 32).",
  notes.append = FALSE,
  star.cutoffs = c(.05, .01, .001)
)

# CHALLENGE: Change type = "text" to type = "html" and copy the output
# into an HTML file to see how it renders in a browser.

# ---------------------------------------------------------------------------
# PART 4: Visualise regression coefficients
# ---------------------------------------------------------------------------
# TASK: Create a coefficient plot for model_full

results_full <- tidy(model_full, conf.int = TRUE) %>%
  filter(term != "(Intercept)") %>%
  mutate(term = recode(term,
    "hp"  = "Horsepower",
    "wt"  = "Weight (1000 lbs)",
    "cyl" = "Cylinders"
  ))

ggplot(results_full, aes(y = term, x = estimate)) +
  geom_point(size = 3, color = "#2C3E50") +
  geom_errorbar(
    aes(xmin = conf.low, xmax = conf.high),
    width = 0.2,
    color = "#2C3E50"
  ) +
  geom_vline(xintercept = 0, linetype = "dashed", color = "#E74C3C") +
  labs(
    title = "Figure 1",
    subtitle = "Regression Coefficients with 95% Confidence Intervals",
    x = "Unstandardized Coefficient Estimate",
    y = NULL,
    caption = "Note. Dashed red line = zero effect. Data: mtcars (N = 32)."
  ) +
  theme_minimal(base_size = 13)

# QUESTIONS:
# Q7. Which predictor has the largest (most negative) effect?
# Q8. Do any confidence intervals cross zero? What does that mean?

# ---------------------------------------------------------------------------
# PART 5: Build a prediction table
# ---------------------------------------------------------------------------
# TASK: Predict mpg for cars with different horsepower values,
#       holding weight (wt = 3.0) and cylinders (cyl = 6) constant.

scenarios <- tibble(
  hp  = c(50, 100, 150, 200, 250, 300),
  wt  = 3.0,
  cyl = 6
)

pred_out <- predict(model_full, newdata = scenarios, se.fit = TRUE)

scenarios %>%
  mutate(
    `Predicted MPG` = round(pred_out$fit, 2),
    `SE`            = round(pred_out$se.fit, 2),
    `95% CI Lower`  = round(pred_out$fit - 1.96 * pred_out$se.fit, 2),
    `95% CI Upper`  = round(pred_out$fit + 1.96 * pred_out$se.fit, 2)
  ) %>%
  rename(Horsepower = hp, `Weight (1000 lbs)` = wt, Cylinders = cyl) %>%
  knitr::kable(align = "c")

# QUESTION:
# Q9. As horsepower increases from 50 to 300, what happens to predicted mpg?
# Q10. Are the confidence intervals wider at extreme values of hp?

# ---------------------------------------------------------------------------
# PART 6: Check regression assumptions
# ---------------------------------------------------------------------------
# TASK: Produce diagnostic plots for model_full

par(mfrow = c(2, 2))  # 2x2 grid of plots
plot(model_full)      # Generates 4 standard diagnostic plots
par(mfrow = c(1, 1))  # Reset to single plot layout

# QUESTIONS:
# Q11. Does the Residuals vs. Fitted plot show any systematic pattern?
# Q12. Do the Q-Q plot points approximately follow the diagonal line?
# Q13. Are there any high-leverage or influential observations?

# ---------------------------------------------------------------------------
# PART 7: Write an APA-style result sentence
# ---------------------------------------------------------------------------
# TASK: Using the output from summary(model_full), complete this template:
#
# "A multiple linear regression was conducted to examine whether [predictors]
# predicted [outcome]. The overall model was statistically significant,
# F([df1], [df2]) = [F-value], p [</>] [p-value], R2 = [value],
# adjusted R2 = [value]. Horsepower was [significant/not significant]
# (beta-hat = [value], SE = [value], t([df]) = [value], p = [value],
# 95% CI [[lower], [upper]])."
#
# Fill in the brackets using values from: summary(model_full)

summary(model_full)  # Run this and use the output to fill in the template above

# ===========================================================================
# EXTENSION TASKS (optional, for advanced students)
# ===========================================================================

# Extension 1: Add an interaction term
# Does the effect of horsepower depend on the number of cylinders?
model_interaction <- lm(mpg ~ hp * cyl + wt, data = mtcars)
summary(model_interaction)

# Extension 2: Standardised coefficients
# Standardise all predictors to compare effect sizes directly
mtcars_std <- mtcars %>%
  mutate(across(c(hp, wt, cyl), scale))

model_std <- lm(mpg ~ hp + wt + cyl, data = mtcars_std)
summary(model_std)

# Extension 3: Export the coefficient plot as a PNG file
ggsave("coefficient_plot.png", width = 7, height = 4, dpi = 300)

# ===========================================================================
# END OF EXERCISE
# See handout.qmd for complete worked solutions and APA reporting templates.
# ===========================================================================
