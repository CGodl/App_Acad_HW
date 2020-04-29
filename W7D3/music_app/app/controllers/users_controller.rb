class UsersController < ApplicationController
  

  def new #Instantiate an empty object. Render the new form.
    @user = User.new #Any other controller value. Use an instance when rendering
    render :new
  end

  def create
    @user = User.new(params[:user][:email])
    if @user.save
      login!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

end
