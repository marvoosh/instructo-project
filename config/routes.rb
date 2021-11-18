Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'confirmation/:booking_id', to: 'pages#confirmation', as: 'confirmation'
  get 'instructors/:id/bookings', to: 'instructors#view_bookings', as: 'instructor_bookings'
  get '/user/:id/dashboard', to: 'users#view_bookings', as: 'dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :instructors do
    resources :bookings, only: [:new, :create]

  end

  resources :bookings, only: [:destroy]
end
