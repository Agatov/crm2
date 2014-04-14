class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = current_account.users.build params[:user]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
