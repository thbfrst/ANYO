Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'profile', to: 'pages#profile'
  resources :candies do
    resources :order_items, only: [:create]
  end

  resources :order_items, only: [:destroy]

  resources :orders, only: [:show]  do
    collection  do
      get "my_orders"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
