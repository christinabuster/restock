Rails.application.routes.draw do
  resources :items

  root "items#index"

  get "/items", to: "items#index"
end
