class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  helper_method :admin_logged_in?

  def admin_logged_in?
    session[:admin] == true
  end

  def authenticate_admin!
    redirect_to login_path unless admin_logged_in?
  end
end
