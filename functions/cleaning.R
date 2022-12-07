###Cleaning functions

##'Cleaning'
#Fixes the column names, removes any empty rows and  removes the
#columns that start with 'delta' and the column called 'comments'.

cleaning <- function(data_raw){
data_raw %>%
clean_names() %>%
remove_empty(c("rows", "cols")) %>%
select(-starts_with("delta")) %>%
select(-comments)
}

remove_NA <- function(data_clean){
  data_clean %>%
    filter(!is.na(body_mass_g)) %>%
    filter(!is.na(culmen_length_mm)) %>%
    select(species, culmen_length_mm, body_mass_g)
}
