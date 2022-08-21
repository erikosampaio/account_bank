class UsersBackoffice::ProfileController < ApplicationController
  before_action :authenticate_user!, except: [:deposit]
  before_action :set_user, only: [:index, :withdraw, :transfer, :balance, :extract, :edit, :update, :closing_account]
  before_action :password_verify, only: [:update]
  layout 'users_backoffice'

  def index
  end

  def withdraw
  end

  def deposit
  end

  def transfer
  end

  def balance
  end

  def extract
  end

  def edit
    @user.build_account if @user.account.blank?
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
      params.require(:user).permit(:email, :password, :password_confirmation,
        account_attributes: [:id, :name, :number, :balance])
    end

    def password_verify
      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].extract!(:password, :password_confirmation)
      end
    end
end
