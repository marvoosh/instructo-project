class InstructorsController < ApplicationController
  # IMAGES = ["hUHzaiAHuUc", "EzH46XCDQRY", "E6ExxeQNiN4", "iE71-TMrrkE", "9fByQORuvqM", "IrRbSND5EUc", "tXJhAFVOHVk", "rM6tUdA8UyE"]

    include PgSearch::Model
    pg_search_scope :search_by_name_and_expertise,
      against: [ :first_name, :last_name, :expertise ],
      using: {
        tsearch: { prefix: true }
    }

  def index
    if params[:query]
      @instructors = Instructor.where(first_name: params[:query]) || Instructor.where(last_name: params[:query])

    else
      @instructors = Instructor.all
    end
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

  def view_bookings
    @instructor = Instructor.find(params[:id])
    @bookings = @instructor.bookings
  end

  private

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :expertise)
  end
end
