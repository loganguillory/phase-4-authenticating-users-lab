Rails.application.routes.draw do
  resources :articles, only: [:index, :show, :create, :destroy]
 
  get "/me", to: "users#show"
  
  post "/login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
