class UsersController < ApplicationController

  def index              # size: 800x600
    @users = User.all.reverse
    @user = ""
  end

  def create
    @user = User.create(name: params[:name])
    @user.avatar = params[:avatar]
    @user.save!
    #@user.avatar = File.open('public/app/assets/images')
    redirect_to '/'
  end


 def user_params(params)
    params.permit(:name, :avatar)
  end

end
