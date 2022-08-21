Rails.application.routes.draw do
  namespace :users_backoffice do
    get 'profile/index', to: 'profile#index'
    get 'profile/withdraw', to: 'profile#withdraw'
    get 'profile/deposit', to: 'profile#deposit'
    get 'profile/transfer', to: 'profile#transfer'
    get 'profile/extract', to: 'profile#extract'
    get 'profile/balance', to: 'profile#balance'
    get 'profile/closing_account', to: 'profile#closing_account'
    get 'profile', to: 'profile#edit'
    patch 'profile', to: 'profile#update'
  end

  devise_for :users

  get 'inicio', to: 'welcome#index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
