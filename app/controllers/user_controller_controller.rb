class UserControllerController < ApplicationController
  def new
    @user = User.first
  end
  def create
     puts "Salut"
     puts params
     user = User.new
     user.username = params["username"]
     user.bio = params["bio"]
     user.save
     redirect_to user_path(@user)
   end

   def show
   	@user = User.find(params[:id])
   end

end
