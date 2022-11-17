Rails.application.routes.draw do
  get 'event_spaces/index'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index
  resources :event_spaces, only: %i[new index show create] do
    resources :bookings, only: :create
    resources :reviews, only: :create
  end
  resources :bookings, only: :update
  resources :users, only: %i[edit update]
  get '/dashboard', to: 'users#dashboard', as: :user_dashboard
end
