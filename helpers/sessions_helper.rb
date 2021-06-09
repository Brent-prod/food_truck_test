def is_logged_in?
    if session[:user_id]
        return true
    else
        return false
    end

    # Alternative #1
    # Ternary Expression: <condition> ? <if_true> : <if_false>
    # return session[:user_id] ? true : false

    # Alternative #2
    # return !!session[:user_id]
end

def current_user
    if is_logged_in?
        return find_user_by_id( session[:user_id] )
    else
        return nil
    end
end