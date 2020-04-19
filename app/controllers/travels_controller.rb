class TravelsController < ApplicationController
  def index
    @travels = Travel.get_all_travels(current_user)
  end

  def new
    @travel = current_user.travels.build
    @groups = Group.all
  end

  def create
    @travel = current_user.travels.build(travel_params)
    if @travel.save
      flash[:success] = 'Travel created successfully.'
      redirect_to travel_path(@travel)
    else
      flash.now[:warning] = 'Something went wrong. Please try again.'
      render new_travel_path
    end
  end

  def show
    @travel = Travel.find_by(id: params[:id])
  end

  private

  def travel_params
    params.require(:travel).permit(:name, :kilometers)
  end
end
