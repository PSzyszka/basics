class ApplicationController < ActionController::Base
  before_action :require_login
  protect_from_forgery with: :exception
  helper_method :current_person

  private

  def current_person
    return unless session[:current_user_id].present?
    @current_person ||= Account.find(session[:current_user_id]).owner
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
end
