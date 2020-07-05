module ViewHelper
  def greeting
    if current_user.present?
      @greeting = "Welcome, #{current_user}!"
      @link = dashboard_path
    else
      @greeting = 'Moody'
      @link = root_path
    end
  end

  def login_or_out
    if current_user.present?
      link_to('Log Out', logout_path, class: 'nav-link')
    else
      button_to 'Login', 'auth/auth0', method: :post

      # link_to('Log In', authentication_path, class: 'nav-link')
    end
  end
end
