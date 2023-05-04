Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :lives do
    resources :bookings, only: %i[index show destroy create new]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
