class UsersController < ApplicationController

  def index              # size: 800x600
    @users = User.all
    @user = ""
  end

  def create
    @user = User.create(name: params[:name])
    redirect_to '/'
  end


 def user_params(params)
    params.permit(:name, :avatar)
  end

end
