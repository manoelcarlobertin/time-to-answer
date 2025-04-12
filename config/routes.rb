Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  get "welcome/index"


  # Defines the root path route ("/")
  root to: "welcome#index"
end
