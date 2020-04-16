class UsersController < ApplicationController  

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    begin
      @user.save
      log_in(@user)
      flash[:success] = "Welcome #{@user.name}!"
      redirect_to @user
    rescue StandardError => e
      flash.now[:warning] = "Something wrong happened. Please try again."
      render new_user_path
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
