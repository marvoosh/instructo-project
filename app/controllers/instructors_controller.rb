class InstructorsController < ApplicationController
  # IMAGES = ["hUHzaiAHuUc", "EzH46XCDQRY", "E6ExxeQNiN4", "iE71-TMrrkE", "9fByQORuvqM", "IrRbSND5EUc", "tXJhAFVOHVk", "rM6tUdA8UyE"]

  def index
    if params[:query].present?
      @instructors = Instructor.search_by_name_and_expertise(params[:query])

    else
      @instructors = Instructor.all
    end
    @images = ["hUHzaiAHuUc", "EzH46XCDQRY", "E6ExxeQNiN4", "iE71-TMrrkE", "9fByQORuvqM", "IrRbSND5EUc", "tXJhAFVOHVk", "rM6tUdA8UyE", "v9FQR4tbIq8", "SVfXlChg9HI", "UYG1U5wj3Tk", "Z9AU36chmQI"]
  end

  def new
    @instructor = Instructor.new(params[:id])
  end

  def create
    @instructor = Instructor.new(instructor_params)
    @instructor.user = current_user
    @instructor.first_name = current_user.first_name
    @instructor.last_name = current_user.last_name
    @instructor.profile_url = current_user.profile_url
    @instructor.user.instructor = true
    if @instructor.save
      redirect_to instructor_booking_path
    else
      flash[:message] = @instructor.errors.full_messages
      render :new
    end
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
    @instructor = current_user.instructors.first
    @bookings = @instructor.bookings
  end

  def accept_booking
    @booking = Booking.find(params[:booking_id])
    @booking.accepted = true
    @booking.save
    redirect_to instructor_booking_path
  end

  private

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :expertise, :price, :bio)
  end
end
