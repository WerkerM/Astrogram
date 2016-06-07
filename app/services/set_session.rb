class SetSession
  def session_for(user)
    session[:user_id] = user.id
  end
end
