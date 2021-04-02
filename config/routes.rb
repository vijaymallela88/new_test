Rails.application.routes.draw do
  get 'carts/index'
  get 'carts/new'
  get 'cards/index'
  get 'cards/new'
  resources :carts
  resources :deals
  resources :orders
  root "deals#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
