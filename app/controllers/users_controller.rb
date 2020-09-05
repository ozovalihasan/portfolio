class UsersController < ApplicationController
  def show
    @projects = current_user.projects
  end

  def home
    redirect_to user_path(User.first)
  end
end
