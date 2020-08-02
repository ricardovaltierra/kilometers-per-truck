class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = current_user.groups.build
  end

  def create
    @group = current_user.groups.build(group_params)
    if @group.save
      flash[:success] = 'City added successfully!'
      redirect_to groups_path
    else
      flash.now[:warning] = 'Something went wrong. Please try again.'
      render new_group_path
    end
  end

  def show
    @group = Group.find_by(id: params[:id])
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
