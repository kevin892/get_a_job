class UserJobApp < ApplicationRecord
  belongs_to :user
  has_many :job_apps
  accepts_nested_attributes_for :job_apps
end
