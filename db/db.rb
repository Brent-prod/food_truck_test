def run_sql(sql_query, params = []) # Take a params 2nd argument
    # params = [] -> set default value of the argument to []
  connection = PG.connect(ENV['DATABASE_URL'] || {dbname: 'food_truck'})
  #results = connection.exec(sql_query)
  # First Arg => Unique Name for prepared statement.
  # Second Arg => SQL Query
  connection.prepare("statement_name", sql_query)
  results = connection.exec_prepared("statement_name", params)
  
  connection.close

  return results
end
