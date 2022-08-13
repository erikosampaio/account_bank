class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :account

  accepts_nested_attributes_for :account, reject_if: :all_blank, allow_destroy: false

  def full_name
    [self.first_name, self.last_name].join(' ')
  end
end
