class UsersController < ApplicationController
  def show; end

  def home
    redirect_to user_path(User.first)
  end
end
