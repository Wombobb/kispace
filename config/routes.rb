Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index
  resources :event_spaces, only: %i[new index show create] do
  # resources :users, only: [:show] do
    # resources :bookings, only: %i[new create update edit]
      resources :bookings, only: :create
  end
  resources :bookings, only: :update
  get '/dashboard', to: 'users#dashboard', as: :user_dashboard
end
