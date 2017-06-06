class UsersController < ApplicationController

  def index
    @users = User.all
    render("/users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @photos = Photo.where(:user_id => current_user)
    render("/users/show.html.erb")
  end



end
