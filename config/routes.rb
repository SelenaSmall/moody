Rails.application.routes.draw do
  root "home#index"

  get 'auth/auth0/callback' => 'authenticated#callback' # Authentication successful
  get 'auth/failure' => 'authenticated#failure'         # Authentication fail

  get '/logout' => 'authenticated#logout'
end
