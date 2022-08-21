class Transfer < ApplicationRecord
  belongs_to :account
  has_one :account
end
