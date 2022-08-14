Rails.application.routes.draw do
  namespace :users_backoffice do
    get 'sacar', to: 'profile#withdraw'
    get 'depositar', to: 'profile#deposit'
    get 'transferencia', to: 'profile#transfer'
    get 'extrato', to: 'profile#extract'
    get 'saldo', to: 'profile#balance'
    get 'encerrar_conta', to: 'profile#closing_account'
    get 'editar', to: 'profile#update'
  end

  devise_for :users

  get 'inicio', to: 'welcome#index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
