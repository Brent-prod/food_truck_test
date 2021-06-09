require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

enable :sessions

require_relative 'db/db'
require_relative 'models/food'
require_relative 'models/user'
require_relative 'helpers/sessions_helper'
require_relative 'controllers/food_controller'
require_relative 'controllers/users_controller'
require_relative 'controllers/sessions_controller'


get '/' do
  redirect '/food'
end

# 1. Add a new file in helpers/session.rb (make sure it's linked up in main)
#    -- Create a method for is_logged_in?
#    -- Replace in index.erb with the method
# 2. Replace our Welcome, user_id, with Welcome, email!
#    -- Create a method in helpers/session.rb
#    -- current_user
#    -- -- look up the user in the database based on session[:user_id]
#           (add find_user_by_id method in the user model)
#    -- -- Return nil if there is no user
# 3. Add a logout button that makes a `delete request` to `/sessions`
#    -- in sessions controller
#    -- set sessions[:user_id] = nil
 

# get '/food/:id/delete' do |id|
#     run_sql "DELETE FROM food WHERE id = #{id}";
#     redirect "/food"
# end


# /users      -> GET  -> gets all users (ish) (plural form)
# /users      -> POST -> create a new user
# /users/{id} -> GET  -> gets an individual user
# /users/{id} -> PUT  -> update an individual user
# /users/{id} -> DELETE -> delete an individual user

# /food -> GET
# /food -> POST
# /food/:id -> GET
# /food/:id -> PUT
# /food/:id -> DELETE



