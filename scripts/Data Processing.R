  ## Initialization
  
install.packages("janitor")
library("janitor")

install.packages("knitr")
library("knitr")

install.packages("lubridate")
library("lubridate")

install.packages("opendatatoronto")
library("opendatatoronto")

install.packages("tidyverse")
library("tidyverse")

## Git Check

use_git_config(
  user.name = "iJustinn",
  user.email = "ijustinzhong@gmail.com"
)

## Processing Data

Tickets_data <-
  read_csv(
    file = "Tickets_Issued.csv",
    show_col_types = FALSE
  )

head(Tickets_data)

Tickets_data <-
  clean_names(Tickets_data)

head(Tickets_data)

Tickets_data <-
  Tickets_data |>
  select(
    offence_year,
    division
  )

head(Tickets_data)

names(Tickets_data)

Tickets_data$offence_year |>
  unique()

Tickets_data$division |>
  unique()

Tickets_data |>
  count(division)

Tickets_data |>
  ggplot(aes(x = division)) +
  geom_bar() +
  theme_minimal() + 
  labs(x = "Division", y = "Number of Tickets") 

Tickets_data |>
  ggplot(aes(x = offence_year)) +
  geom_bar() +
  theme_minimal() + 
  labs(x = "Year", y = "Number of Tickets") 
