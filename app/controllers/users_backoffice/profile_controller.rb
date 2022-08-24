class UsersBackoffice::ProfileController < ApplicationController
  before_action :authenticate_user!, except: [:deposit]
  before_action :set_user, only: [:index, :withdraw, :transfer, :extract, :edit, :update, :closing_account, :deposit_logged]
  before_action :password_verify, only: [:update]
  layout 'users_backoffice'

  def index
  end

  def withdraw
    if params[:user][:amount].present?
      if (@user.balance - params[:user][:amount].to_f) < 0
        redirect_to users_backoffice_profile_index_path, notice: "Valor de saque superior ao saldo!"
      else
        @user.balance -= params[:user][:amount].to_f
        if @user.save
          redirect_to users_backoffice_profile_index_path, notice: "Saque realizado com sucesso!"
        else
          render :withdraw
        end
      end
    end
  end

  def deposit_logged
    @user.balance += params[:user][:value].to_f if params[:user][:value].present?
    if @user.save
      redirect_to users_backoffice_profile_index_path, notice: "Depósito realizado com sucesso!"
    else
      render :deposit_logged
    end
  end

  def deposit
  end

  def transfer
  end

  def extract
  end

  def edit
  end

  def update
    if @user.update(params_user)
      bypass_sign_in(@user)
      redirect_to users_backoffice_profile_index_path, notice: "Usuário atualizado com sucesso!"
    else
      render :edit
    end
  end

  def closing_account
  end

  private

    def set_user
      @user = User.find(current_user.id)
    end

    def params_user
      params.require(:user).permit(:email, :password, :password_confirmation, :username, :number_account)
    end

    def password_verify
      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].extract!(:password, :password_confirmation)
      end
    end
end
