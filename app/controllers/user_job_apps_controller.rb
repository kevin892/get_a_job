class UserJobAppsController < ApplicationController
  def index
    @user = current_user
  end

  def new 
    @user_job_app = UserJobApp.new
  end 
end
