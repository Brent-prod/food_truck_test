require 'bcrypt'

def create_user(email, password)
  password_digest = BCrypt::Password.create(password)

  params = [email, password_digest]
  sql_query = "INSERT INTO users(email, password_digest) VALUES($1, $2);";
  run_sql(sql_query, params)
end

def find_user_by_email( email )

    sql_query = "SELECT * FROM users WHERE email = $1"
    params = [ email ];
    results = run_sql(sql_query, params)

    # Should return either a single User hash, or nil if not found
    if results.to_a.length > 0
        return results[0]
    else
        return nil
    end
end

def find_user_by_id id
    sql_query = "SELECT * FROM users WHERE id = $1"
    params = [ id ]
    results = run_sql(sql_query, params)

    # Should return either a single User hash, or nil if not found
    if results.to_a.length > 0
        return results[0]
    else
        return nil
    end
end