Rails.application.routes.draw do
  namespace :users_backoffice do
    get 'sacar', to: 'profile#sacar'
    get 'depositar', to: 'profile#depositar'
    get 'transferencia', to: 'profile#transferencia'
    get 'extrato', to: 'profile#extrato'
    get 'saldo', to: 'profile#saldo'
    get 'encerrar_conta', to: 'profile#closing_account'
  end

  devise_for :users

  get 'inicio', to: 'welcome#index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
