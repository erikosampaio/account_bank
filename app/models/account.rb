class Account < ApplicationRecord
  belongs_to :user
  has_many :transfer

  accepts_nested_attributes_for :transfer, reject_if: :all_blank
end
