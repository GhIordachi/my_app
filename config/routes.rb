Rails.application.routes.draw do
  resources :categories
  resources :products
  devise_for :users, controllers: { registrations: 'user/registrations' }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'extra#index'

  get 'show_products', to: 'extra#show_products'
  get 'log_out', to: 'extra#new'
  get 'accounts', to: 'users#index', as: "users"

end
