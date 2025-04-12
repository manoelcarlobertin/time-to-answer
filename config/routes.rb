Rails.application.routes.draw do
  namespace :site do
    get "welcome/index"
  end
  namespace :admins_backoffice do
    get "welcome/index" # Dashboard
    resources :admins   # Administradores
  end
  namespace :users_backoffice do
    get "welcome/index"
  end

  devise_for :admins
  devise_for :users

  get "home", to: "site/welcome#index"
  get "backoffice", to: "admins_backoffice/welcome#index"
  # Defines the root path route ("/")
  root to: "site/welcome#index"
end
