Rails.application.routes.draw do

  devise_for :accounts, controllers: { registrations: 'accounts/registrations' }, path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'parkings#index'

  resources :parkings do
    resources :place_rents, only: [:new, :create]
  end
  resources :sessions, only: [:create]
  resources :place_rents, only: [:index, :show, :destroy]
  resources :cars
  resources :accounts, only: [:create]

  # get '/login', to: 'sessions#new', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  # get '/register', to: 'sessions#create', as: 'register'

end
