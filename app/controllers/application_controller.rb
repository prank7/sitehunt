class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  helper_method :current_user, :signed_in?

  def current_user=(user)
    @current_user = user
    session[:user_id] = user.nil? ? nil : user.id
  end


  def store_location
     session[:return_to] = request.url if request.get?
  end

  def sign_out
      return unless signed_in?
      self.current_user = nil
  end


  def redirect_unless_signed_in
      unless signed_in?
          store_location
        redirect_to root_url, notice: "Please sign in."
      end
  end

end
