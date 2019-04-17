require 'pry'
class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # @user = current_user.email
    @user = current_user
    redirect_to edit_user_path(@user) if current_user.first_name == nil
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    @user = User.update(user_params)
    redirect_to users_path
  end

  private
   def user_params
     params.require(:user).permit(:first_name, :last_name, :linkedin_url, :github_url)
   end

end
