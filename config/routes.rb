Rails.application.routes.draw do
  resources :group_classes
  resources :personal_training_sessions
  resources :payment_methods
  devise_for :trainers
  resources :room_bookings
  resources :rooms
  resources :fitness_goals
  resources :health_metrics
  resources :equipment
  resources :exercise_routines
  resources :exercises
  devise_for :members
  get 'home/index'
  get 'home/hub'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
