#install.packages("DBI")
#install.packages("RSQLite")

library(DBI)
library(RSQLite)

# Set the path to the SQLite database
db_path <- "C:/Users/Ruth/Desktop/Ca1_RuthC/Data_CA2/ICA_2023.sqlite"

# Connect to the database
con <- dbConnect(RSQLite::SQLite(), dbname = db_path)

# List all tables in the database
tables <- dbListTables(con)
print(tables)

# Query data from a specific table (replace 'table_name' with the desired table)
data <- dbReadTable(con, "Assets")

# View the first few rows of the data
head(data)

# If you want to run a custom SQL query
query_result <- dbGetQuery(con, "SELECT * FROM table_name LIMIT 10")
print(query_result)

# Disconnect from the database when done
dbDisconnect(con)

