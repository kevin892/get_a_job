require 'pry'
class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user.email
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to users_path
  end

  def edit
    @user = User.find_by(params[:email])

  end

  def update
    @user = User.find_by(params[:email])
    @user = User.update(user_params)
    redirect_to users_path
  end

  private
   def user_params
     params.require(:user).permit(:first_name, :last_name, :linkedin_url, :github_url)
   end

end
