Rails.application.routes.draw do
  resources :comments

  resources :publications do
    resources :comments, only: [:create] #:destroy
  end

  devise_for :users

  resources :users do
    resources :comments
    resources :publications
  end
  get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'publications#index'
  get '/publications', to: 'publications#index', as: 'user_root'
end
