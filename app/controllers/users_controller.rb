class UsersController < ApplicationController
def new
@user = User.new
end

def create
user = User.new(user_params)
if user.save
  flash[:success] = "You have successfully created a new account"
session[:user_id] = user.id
  redirect_to root_path
else
  flash.now[:error] = "There is something wrong with the credentials"
  render 'new'
end
end

private
def user_params
params.require(:user).permit(:username, :password, :password_confirmation)
end
end
