class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def new
  end

  def create
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :expertise)
  end
end
