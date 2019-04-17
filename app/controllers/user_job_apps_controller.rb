require 'pry'
class UserJobAppsController < ApplicationController

  def index
    @user = current_user
  end

  def new 
    @user = current_user
    @user_job_app = UserJobApp.new
  end 

  def create
    @user_job_app = UserJobApp.new(user_job_app_params)
    current_user.user_job_app = @user_job_app
    binding.pry
    redirect_to user_job_apps_path
  end 



  private 

  def user_job_app_params
    params.require(:user_job_app).permit(:job_apps_attributes => [:job_title, :position, :status, :activity])
  end 

end
