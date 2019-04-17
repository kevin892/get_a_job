class Education < ApplicationRecord
  belongs_to :resume

  validates_presence_of :school


end
