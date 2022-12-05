Rails.application.routes.draw do
  get 'static_pages/landing_page'
  root 'static_pages#dashboard'
  namespace :admin do
      resources :lessons
      # resources :trainers
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
   post 'lessons/:id/like', to: 'lessons#like', as: 'like'
  # resources :lessons, only: [:show, :index] do
  #   member do 
  #     post 'toggle_favorite', to: 'lessons#toggle_favorite'
  #   end
  # end

  resources :clients, only: [:show, :edit, :update]
  resources :trainers, only: [:show, :edit, :update] do
    collection do
      get 'list_schedules'
      get 'list_bookings'
    end
  end
  # resources :schedules, except: [:index]
  resources :schedules, except: [:index]  do
    resources :bookings, except: [:index, :show]
  end
  resources :bookings, only: [:index, :show]
end