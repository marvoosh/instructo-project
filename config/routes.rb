Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post 'instructors/:booking_id/accept', to: 'instructors#accept_booking', as: 'accept_booking'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :instructors do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:destroy]
  get 'confirmation/:booking_id', to: 'pages#confirmation', as: 'confirmation'
  get '/user/:id/dashboard', to: 'users#view_bookings', as: 'dashboard'
  get '/view_bookings', to: 'instructors#view_bookings', as: 'instructor_booking'
end
