Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :candies
  resources :orders, only: [:index, :show]
  resources :order_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
