Rails.application.routes.draw do
  namespace :users_backoffice do
    get 'index', to: 'profile#index'
    get 'sacar', to: 'profile#withdraw'
    get 'depositar', to: 'profile#deposit'
    get 'transferencia', to: 'profile#transfer'
    get 'extrato', to: 'profile#extract'
    get 'saldo', to: 'profile#balance'
    get 'criar', to: 'profile#new'
    get 'encerrar_conta', to: 'profile#closing_account'
    get 'editar', to: 'profile#edit'
  end

  devise_for :users

  get 'inicio', to: 'welcome#index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
