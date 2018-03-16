library(tidyverse)
library(plotly)
library(lubridate)
library(hms)

df_trafico <- readr::read_rds("data/trafico.RDS")

p <- df_trafico %>% 
  filter(id == 1001) %>% 
  ggplot(aes(x = fecha,
             y = intensidad)) + 
  geom_line() + 
  theme_minimal()

ggplotly(p)


p <- df_trafico %>% 
  filter(id == 4348) %>% 
  mutate(hora = as.hms(fecha),
         fecha = as_date(fecha),
         dia_sem = wday(fecha, label = T, week_start = 1)) %>% 
  ggplot(aes(x = hora,
             y = intensidad)) + 
  geom_line(aes(group = fecha), alpha = 0.6) +
  facet_grid(dia_sem~.) +
  theme_bw()

ggplotly(p)
