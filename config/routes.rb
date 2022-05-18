Rails.application.routes.draw do
  resources :warehouses
  resources :items

  root "warehouses#index"

  get "/warehouses", to: "warehouses#index"
end
