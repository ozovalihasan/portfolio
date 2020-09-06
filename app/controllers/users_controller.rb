class UsersController < ApplicationController
  def show
    @projects = User.first.projects
  end

  def home
    redirect_to user_path(User.first)
  end
end
