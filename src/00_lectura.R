
# https://datos.madrid.es/portal/site/egob/menuitem.c05c1f754a33a9fbe4b2e4b284f1a5a0/?vgnextoid=33cb30c367e78410VgnVCM1000000b205a0aRCRD&vgnextchannel=374512b9ace9f310VgnVCM100000171f5a0aRCRD&vgnextfmt=default

# Lectura -----------------------------------------------------------------

ene_2018 <- readr::read_csv2("data/raw/01-2018.csv.zip")
dic_2017 <- readr::read_csv2("data/raw/12-2017.csv.zip")
df_trafico <- bind_rows(ene_2018, dic_2017)

saveRDS(df_trafico, "data/trafico.RDS")

