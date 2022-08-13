class UsersBackoffice::ProfileController < ApplicationController
  before_action :authenticate_user!, except: [:depositar]
  before_action :set_params, only: [:sacar, :closing_account, :transferencia, :extrato]
  layout 'users_backoffice'

  def sacar
  end

  def depositar
  end

  def transferencia
  end

  def extrato
  end

  def saldo
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
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def set_params
      @user = User.find(current_user.id)
    end
end
