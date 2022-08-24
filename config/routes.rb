Rails.application.routes.draw do
  namespace :users_backoffice do
    get 'profile/index', to: 'profile#index'
    patch 'profile/withdraw', to: 'profile#withdraw'
    get 'profile/deposit', to: 'profile#deposit'
    patch 'profile/deposit', to: 'profile#deposit'
    patch 'profile/deposit_logged', to: 'profile#deposit_logged'
    get 'profile/transfer', to: 'profile#transfer'
    patch 'profile/transfer', to: 'profile#transfer'
    get 'profile/extract', to: 'profile#extract'
    patch 'profile/closing_account', to: 'profile#closing_account'
    get 'profile', to: 'profile#edit'
    patch 'profile', to: 'profile#update'
  end

  devise_for :users

  get 'inicio', to: 'welcome#index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
