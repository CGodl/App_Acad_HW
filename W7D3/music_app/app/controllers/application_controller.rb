class ApplicationController < ActionController::Base
  helper_method :login, :current_user #helper_method send methods across other classes that inherit from AC

  def login!(user) #making sure
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end

  def current_user #Making sure user logged in
    @current_user ||= User.find_by(session_token: session[:session_token])
  end


end
