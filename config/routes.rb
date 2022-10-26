Rails.application.routes.draw do
  # get 'users/index'
  namespace :admin do
      resources :lessons
      root to: "lessons#index"
    end

  root 'static_pages#landing_page'
  get 'static_pages/dashboard'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

resources :users

  # resources :lesson_payments

  resources :lessons, only: [:show, :index]
  resources :trainers, :clients,:schedules,:bookings

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
