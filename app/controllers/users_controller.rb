class UsersController < ApplicationController
   #before_filter :authorize
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      #session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
  
    def destroy
    @user = User.find(params[:id])
    @user.destroy
    
     redirect_to "/admin", :flash => { :success => "Slettet" }
  end
  
  def index
    @users = User.all
  end

end
