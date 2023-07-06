Rails.application.routes.draw do
  resources :comments
  resources :publications
  devise_for :users
  get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'homes#index'
  get '/publications', to: 'publications#index', as: 'user_root'
end
