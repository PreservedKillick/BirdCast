BirdCast::Application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'pages#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :tweets, except: [:edit, :update, :index]
end
