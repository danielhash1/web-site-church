Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/about'
  devise_for :users

  #devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  #root to: "home#index"
  #root to: "pages#home"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :videos

  resources :blogs
  root 'blogs#index'
end
