class TravelsController < ApplicationController
  def index
    official = params.dig(:travel, :official)
    if official
      if params[:travel][:official] == 'true'
        @travels = Travel.get_all_official(current_user)
        session[:official] = 'true'
      else
        @travels = Travel.get_all_unofficial(current_user)
        session[:official] = 'false'
      end
    else
      @travels = if session[:official] == 'true'
                   Travel.get_all_official(current_user)
                 else
                   Travel.get_all_unofficial(current_user)
                 end
    end
  end

  def new
    @travel = current_user.travels.build
  end

  def create
    @travel = current_user.travels.build(travel_params)
    if @travel.save
      flash[:success] = 'Travel created successfully!'
      redirect_to travels_path(travel: { official: session[:official] })
    else
      flash.now[:warning] = "#{@travel.errors.full_messages.to_sentence}. Please try again."
      render new_travel_path
    end
  end

  def show
    @travel = Travel.find_by(id: params[:id])
  end

  private

  def travel_params
    params.require(:travel).permit(:name, :kilometers, :group_id, :official)
  end
end
