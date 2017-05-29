class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(email:params[:email])

    if user == nil
      flash[:error] = "Email does not exist"
    elsif user.authenticate(params[:password])
      session[:id] = user.id
      flash[:success] = "You have successfully signed in"
    else
      flash[:error] = "Password is invalid. Please try again"
    end
      redirect_to root_path
  end

  def destroy
  end

end
