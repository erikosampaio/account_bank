class UsersBackoffice::ProfileController < ApplicationController
  before_action :authenticate_user!, except: [:deposit]
  before_action :set_params, only: [:withdraw, :closing_account, :transfer, :extract]
  layout 'users_backoffice'

  def withdraw
  end

  def deposit
  end

  def transfer
  end

  def extract
  end

  def balance
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(params_user)
      redirect_to users_backoffice_profile_index_path, notice: "Dados atualizados com sucesso!"
    else
      render :index
    end
  end

  def closing_account
  end

  private
    def params_user
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def set_params
      @user = User.find(current_user.id)
    end
end
