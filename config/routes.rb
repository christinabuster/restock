Rails.application.routes.draw do
  resources :warehouses
  resources :items

  root "items#index"

  get "/items", to: "items#index"
end
