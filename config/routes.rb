Rails.application.routes.draw do
  root "store#index"
  resources :users do
    resources :items
  end
  resources :store
  get "product/:id", to: "store#show"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
end
