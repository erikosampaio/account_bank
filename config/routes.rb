Rails.application.routes.draw do
  namespace :users_backoffice do
    get 'index', to: 'profile#index'
    get 'withdraw', to: 'profile#withdraw'
    get 'deposit', to: 'profile#deposit'
    get 'transfer', to: 'profile#transfer'
    get 'extract', to: 'profile#extract'
    get 'balance', to: 'profile#balance'
    get 'closing_account', to: 'profile#closing_account'
    get 'edit', to: 'profile#edit'
    get 'profile', to: 'profile#update'
  end

  devise_for :users

  get 'inicio', to: 'welcome#index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
