Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    ENV["CLIENT_ID"],
    ENV["CLIENT_SECRET"],
    ENV["CLIENT_DOMAIN"],
    callback_path: ENV["CALLBACK_PATH"],
    authorize_params: {
      scope: 'openid email profile'
    }
  )
end
