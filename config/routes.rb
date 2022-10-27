Rails.application.routes.draw do
  root 'static_pages#landing_page'
  get 'static_pages/dashboard'
  namespace :admin do
      resources :lessons
      root to: "lessons#index"
    end


  # get 'users/profile'
  # # get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users, only: [:show, :index]

  # resources :lesson_payments

  resources :lessons, only: [:show, :index]
  resources :clients, only: [:show, :edit, :update]
  resources :trainers, :schedules, :bookings

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
