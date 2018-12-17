class SchoolClassesController < ApplicationController

  before_action :find_school, only: %i[show edit update]

  def new
  end

  def create
    @school_class = SchoolClass.create(title: params[:school_class_title], room_number: params[:school_class_room_number])
    # byebug
    redirect_to school_class_path(@school_class)
  end

  def show
  end

  def edit
  end

  def update
    @school_class.update(school_class_params)
    redirect_to @school_class
  end

  private

  def find_school
    @school_class = SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
