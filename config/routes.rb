Rails.application.routes.draw do
  resources :comments

  resources :publications do
    resources :comments, only: [:create, :destroy] #:destroy
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions', #ESTA VEZ TAMBIÉN ME SALTE LA COMA EN SERIO SOY LA SAL DE LA TIERRA
    registrations: 'users/registrations'
  }

  resources :users do
    resources :comments
    resources :publications
  end
  
  get 'homes/index'

  root 'publications#index'
  get '/publications', to: 'publications#index', as: 'user_root'
end
