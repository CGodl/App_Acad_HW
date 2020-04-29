class SessionsController < ApplicationController

  def index
    render :new
  end

  def create
    user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    if user
      login(user)
      log_in_user!(user)
      redirect_to user_url
    else
      flash.now[:errors] = ["Does not WORK"]
  end

  #strong params???

end

#Sessions creating and destroying a session

#Users for storing all of the logic we need.
  #-Creating a new user, storing users form