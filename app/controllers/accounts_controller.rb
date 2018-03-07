class AccountsController < ApplicationController
  before_action :require_login, except: [:new, :create]

  def new
    @account = Account.new
    @account.build_owner
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      redirect_to login_path
    else
      render 'new'
    end
  end

  private
  def account_params
    params.require(:account).permit(:email, :password, :password_confirmation, owner_attributes: [:first_name, :last_name])
  end
end
