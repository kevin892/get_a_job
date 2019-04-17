class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :resume
  has_one :user_job_app

  has_many :skills, through: :resume
  has_many :job_histories, through: :resume
  has_many :educations, through: :resume
  
  accepts_nested_attributes_for :resume
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
