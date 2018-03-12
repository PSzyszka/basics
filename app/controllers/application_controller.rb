class ApplicationController < ActionController::Base
  # before_action :require_login
  protect_from_forgery with: :exception
  helper_method :current_person
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def current_person
    return unless session[:current_user_id].present?
    @current_person ||= current_account.owner
  end

  def logged_in?
    current_person != nil
  end

  def require_login
    unless logged_in?
      session[:return_to] ||= request.original_url

      flash[:error] = "You must be logged in to access this section"
      redirect_to login_path # halts request cycle
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, owner_attributes: [:first_name, :last_name]])
  end
end
