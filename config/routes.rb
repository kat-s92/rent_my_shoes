Rails.application.routes.draw do
  devise_for :users
  root 'lives#index'

  resources :lives do
    resources :bookings, only: %i[create new index show]
  end
  resources :bookings, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
