class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :transfer

  accepts_nested_attributes_for :transfer, reject_if: :all_blank

  # Callbacks
  before_create :set_number_account, :set_username
  before_save :generate_number_account
  
  private

    def set_number_account
      self.number_account = $generate_number_account
    end
    
    def set_username
      self.username = $username[:user][:username]
    end

    def generate_number_account
      $generate_number_account = User.all.size + 1000
    end
end
