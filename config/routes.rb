Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard'
  resources :cars, except: [:edit, :update] do
    resources :bookings, only: [:show, :new, :create]
  end
  resources :bookings, only: :destroy
end
