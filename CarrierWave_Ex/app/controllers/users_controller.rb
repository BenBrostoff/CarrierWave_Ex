class UsersController < ApplicationController

  def index              # size: 800x600
    @users = User.all
  end

end
