Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  resources :parkings do
    resources :place_rents, only: [:new, :create]
  end
  resources :sessions
  resources :place_rents, only: [:index, :show, :destroy]
  resources :cars
end
