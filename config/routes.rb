Rails.application.routes.draw do

  root 'static_pages#landing_page'

  get 'static_pages/dashboard'
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end

  devise_for :users

  # devise_for :users, controllers: {
  #   registrations: 'users/registrations',
  #   sessions: 'users/sessions'
  # }

  # resources :lesson_payments

  resources :lessons
  resources :trainers, :clients,:schedules,:bookings

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
