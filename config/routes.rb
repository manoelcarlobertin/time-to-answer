Rails.application.routes.draw do
  namespace :users_backoffice do
    get "welcome/index"
  end
  namespace :admins_backoffice do
    get "welcome/index"
  end
  devise_for :admins
  devise_for :users
  get "welcome/index"


  # Defines the root path route ("/")
  root to: "welcome#index"
end
