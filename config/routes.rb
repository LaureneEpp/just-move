Rails.application.routes.draw do
  get 'user/show'
  # get 'static_pages/landing_page'
  root 'static_pages#dashboard'
  namespace :admin do
    resources :lessons
    # resources :trainers
    root to: 'lessons#index', as: 'home'
  end

  # get 'users/profile'
  # get 'users/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users, only: %i[show index]
  # resources :lesson_payments
  resources :lessons, only: %i[show index]
  resources :likes, only: %i[index create destroy]
  resources :clients, only: %i[show edit update]
  resources :trainers, only: %i[index show edit update] do
    collection do
      get 'list_schedules'
      get 'list_bookings'
    end
  end
  # resources :schedules, except: [:index]
  # resources :schedules, except: [:index]  do
  #   resources :bookings, except: [:index, :show]
  # end
  resources :schedules
  resources :bookings, only: %i[index create edit update destroy] do
    member do
      patch :change_status
      delete :reject_booking
    end
  end
end
