class Crammer::PlacementsController < ApplicationController
  def new
    @users = User.where(access: 'guest')
    @placements = Crammer::Placement.new
    
  end

  def create
    @placements = Crammer::Placement.new(params[:crammer_class, :user])
    @placements.user = :user
    @placements.crammer_class = :crammer_class
    if @placements.save
      flash[:success] = "Student added to class."
      redirect_to new_placements_path
    else
      flash[:alert] =  "Error addind student."
      redirect_to new_placements_path
    end
  end

  private
  def class_params
    params.require(:crammer_classes, :users).permit(:user.id, :crammer_classes.id)
  end
end
