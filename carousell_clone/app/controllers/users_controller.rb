class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    # byebug
    if @user.save
      flash[:success] = "You have successfully signed up! Please log in with your email and password."
    else
      flash[:error] = "Error signing up, please try again."
    end
    redirect_to new_user_path
  end

  def show
    if !(logged_in?)
			redirect_to new_user_path
		elsif params[:id]
			@user = User.find(params[:id])
		else
			@user = current_user
		end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
