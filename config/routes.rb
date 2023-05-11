Rails.application.routes.draw do
  devise_for :users
  root 'lives#index'

  resources :lives do
    resources :bookings, only: %i[create new show] do
      resources :reviews, only: %i[create new index]
    end
  end
  resources :bookings, only: %i[destroy index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
