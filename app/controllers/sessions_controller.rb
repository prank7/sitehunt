class SessionsController < ApplicationController

  def create
    auth = request.env['omniauth.auth']
    user = User.find_with_omniauth(auth)
    unless user
     user = User.create_with_omniauth(auth)
     new_user = true
    end
    session[:user_id] = user.id
    current_user = user
    if new_user
    	redirect_to '/details'
    else
    	redirect_to '/'
    end
  end

  def destroy
  	sign_out
    redirect_to "/"
  end

end
