class SessionsController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def new
    @account = Account.new
  end

  def create
    @account = Account.find_by(email: account_params[:email])
    if @account&.password_digest == account_params[:password_digest]
      session[:current_user_id] = @account.id
      return_path = session.delete(:return_to) || root_path
      redirect_to return_path
    else
      @account = Account.new
      flash.now[:error] = "The email or password is incorrect"
      redirect_to login_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to login_path
  end

  private
  def account_params
    params.require(:account).permit(:email, :password)
  end
end
