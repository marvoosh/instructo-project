class InstructorsController < ApplicationController
  # IMAGES = ["hUHzaiAHuUc", "EzH46XCDQRY", "E6ExxeQNiN4", "iE71-TMrrkE", "9fByQORuvqM", "IrRbSND5EUc", "tXJhAFVOHVk", "rM6tUdA8UyE"]
  def index
    @instructors = Instructor.all
    @images = ["hUHzaiAHuUc", "EzH46XCDQRY", "E6ExxeQNiN4", "iE71-TMrrkE", "9fByQORuvqM", "IrRbSND5EUc", "tXJhAFVOHVk", "rM6tUdA8UyE", "v9FQR4tbIq8", "SVfXlChg9HI", "UYG1U5wj3Tk", "Z9AU36chmQI"]
  end

  def new
  end

  def create
  end

  def show
    @instructor = Instructor.find(params[:id])
    @booking = Booking.new
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
