class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(name: login_params[:name])    
      log_in(@user)
      redirect_to user_path(@user)
    else
      flash.now[:warning] =  'You are not registered. Please do it'
      render "sessions/new"
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end 

  # private
  
  def login_params
    params.require(:session).permit(:name)
  end
end
