class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :resumes
  accepts_nested_attributes_for :resumes
  has_many :skills, through: :resume
  has_many :job_histories, through: :resume
  has_many :educations, through: :resume
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
