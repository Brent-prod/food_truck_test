def all_food()
  run_sql("SELECT * FROM food;")
end

def create_food(name, price, image_url)
  sql_query = "INSERT INTO food(name,price,image_url) VALUES($1, $2, $3);";
  params = [name, price, image_url]
  run_sql(sql_query, params)
end