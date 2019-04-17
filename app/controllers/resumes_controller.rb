require 'pry'
class ResumesController < ApplicationController
  def index
    @user = current_user
    @resume = current_user.resume
    if @resume == nil
      redirect_to new_resume_path
    else
      redirect_to resume_path(@resume)
    end

  end
  def new
    @user = current_user
    @resume = Resume.new
  end

  def create
    @resume = Resume.create(resume_params)
    current_user.resume = @resume
    redirect_to resumes_path
  end

  def edit
    @resume = Resume.find(params[:id])
  end

  def update
    @resume = Resume.find(params[:id])
    @resume = Resume.update(resume_params)
    redirect_to users_path
  end

  def show
    @user = current_user
    @resume = Resume.find(params[:id])
  end


  private

  def resume_params
    params.require(:resume).permit(:bio,
      :skills_attributes => [name: []]
  )
  end
end
