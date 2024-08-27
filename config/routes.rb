Rails.application.routes.draw do
  get "privacy" => "privacy_policy#index"
  resources :newsletter_emails
  resources :landings
  devise_for :users

  # get the admin root
  get "admin", to: "admin#index", as: :admin
  delete '/admin/destroy_landing/:id', to: 'admin#destroy_landing', as: 'admin_destroy_landing'
  delete '/admin/destroy_newsletter/:id', to: 'admin#destroy_newsletter', as: 'admin_destroy_newsletter'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "landings#index"
end
