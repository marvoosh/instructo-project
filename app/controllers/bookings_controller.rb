class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @instructor = Instructor.find(params[:instructor_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @instructor = Instructor.find(params[:instructor_id])
    @booking.instructor = @instructor
    @booking.user = current_user

    if @booking.save
      redirect_to confirmation_path(@booking)
    else
      flash[:alert] = 'Something went wrong'
    end
  end

  def update

  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    if @booking.user.instructor
      redirect_to instructor_booking_path
    else
      redirect_to dashboard_path(@booking.user)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :duration, :price, :user_id, :instructor_id)
  end
end
