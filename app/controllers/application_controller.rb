class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_person

  private

  def current_person
    return unless session[:current_user_id].present?
    @current_person ||= Account.find(session[:current_user_id]).owner
  end
end
