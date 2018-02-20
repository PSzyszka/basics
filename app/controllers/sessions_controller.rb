class SessionsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.find_by(email: account_params[:email])
    if @account&.password_digest == account_params[:password_digest]
      session[:current_user_id] = @account.id
      redirect_to parkings_path
    else
      @account = Account.new
      render 'new'
    end
  # rescue ActiveRecord::NoMethodError => e
  #   flash[:error] = "The email or password is incorrect"
  #   render 'new'
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to parkings_path
  end

  private
  def account_params
    params.require(:account).permit(:email, :password)
  end
end
