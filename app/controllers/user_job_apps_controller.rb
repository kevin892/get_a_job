class UserJobAppsController < ApplicationController
  def index
    # @user = current_user
    @job_apps = JobApp.all
  end
end
