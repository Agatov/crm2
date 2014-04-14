class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def current_user
    User.first
  end

  def current_landing
    Landing.first
  end

  def current_account
    Account.first
  end

end
