class Auth0Controller < ApplicationController
  # Set session[:userinfo] when authentication succeeds
  def callback
    session[:userinfo] = request.env['omniauth.auth']

    redirect_to '/dashboard'
  end

  def failure
    @error_msg = request.params['message']
  end

  def logout
    reset_session
    redirect_to root_path
  end

  private

  def reset_session
    session['userinfo'] = nil if session['userinfo'].present?
  end
end
