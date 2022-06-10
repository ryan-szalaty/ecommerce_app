Rails.application.routes.draw do
  root "users#index"
  resources :users
  resources :store
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
end
