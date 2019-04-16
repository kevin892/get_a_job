class Resume < ApplicationRecord
  belongs_to :user
  has_many :skills
  has_many :educations
  has_many :job_histories
  accepts_nested_attributes_for :skills
  accepts_nested_attributes_for :educations
  accepts_nested_attributes_for :job_histories
end
