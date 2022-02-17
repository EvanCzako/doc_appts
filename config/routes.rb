Rails.application.routes.draw do
  
  root 'doctors#index'

  resources :doctors do
    resources :appointments, only: [:index]
  end

  resources :appointments, only: [:create,:destroy]

end