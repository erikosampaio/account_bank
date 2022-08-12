class UsersBackoffice::ProfileController < ApplicationController
  before_action :authenticate_user!
  layout 'users_backoffice'

  def index
    @user = User.first
  end

  def sacar
    @user = User.first
  end
end
