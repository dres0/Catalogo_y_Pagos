Rails.application.routes.draw do
  get 'home/index'
  resources :products
  resources :categories
  root "products#index"

  resource :cart, only: [:show, :update]
end
