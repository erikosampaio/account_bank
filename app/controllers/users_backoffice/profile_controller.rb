class UsersBackoffice::ProfileController < ApplicationController
  before_action :authenticate_user!, except: [:deposit]
  before_action :password_verify, only: [:update]
  before_action :set_params, only: [:withdraw, :closing_account, :transfer, :extract]
  before_action @user.build_account
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

  def closing_account
  end

  def update
    if @user.update(params_user)
      bypass_sign_in(@user)
      redirect_to users_backoffice_index_path, notice: "Usuário atualizado com sucesso!"
    else
      render "devise/registrations/edit"
    end
  end

  private
    def params_user
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def set_params
      @user = User.find(current_user.id)
    end

    def password_verify
      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].extract!(:password, :password_confirmation)
      end
    end
end
