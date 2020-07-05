Rails.application.routes.draw do
  root "home#index"

  get 'dashboard' => 'home#dashboard'

  get 'auth/auth0', as: 'authentication'        # Triggers authentication process
  get 'auth/auth0/callback' => 'auth0#callback' # Authentication successful
  get 'auth/failure' => 'auth0#failure'         # Authentication fail

  get '/logout' => 'auth0#logout'
end
