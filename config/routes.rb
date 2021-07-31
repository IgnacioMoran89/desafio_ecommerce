Rails.application.routes.draw do

  resources :coupons
  resources :variations
  resources :variants
  resources :colors
  resources :sizes
  resources :payments
  resources :payment_methods
  resources :order_items
  resources :orders
  resources :products
  resources :categories
  devise_for :admins
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
