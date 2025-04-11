Rails.application.routes.draw do
  get "welcome/index"


  # Defines the root path route ("/")
  root to: "welcome#index"
end
