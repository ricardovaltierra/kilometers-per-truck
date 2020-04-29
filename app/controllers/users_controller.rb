class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    begin
      if @user.save
        log_in(@user)
        redirect_to @user
      else
        flash.now[:warning] = "#{@user.errors.full_messages.to_sentence}."
        render new_user_path
      end
    rescue StandardError
      flash.now[:warning] = 'The name is already taken. Please choose a different one.'
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
