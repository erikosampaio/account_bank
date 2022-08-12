Rails.application.routes.draw do
  namespace :users_backoffice do
    get 'index', to: 'profile#index'
    get 'sacar', to: 'profile#sacar'
  end

  devise_for :users

  get 'inicio', to: 'welcome#index'
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
