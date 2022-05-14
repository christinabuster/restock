Rails.application.routes.draw do
  resources :shipment_details
  resources :shipments
  resources :items

  root "items#index"

  get "/items", to: "items#index"
end
