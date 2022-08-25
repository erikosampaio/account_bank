class Transfer < ApplicationRecord
  belongs_to :user

  #Scopes
  scope :search_by_period, -> min,max { where("created_at BETWEEN ? AND ?",min,max) }
end
