class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @instructor = Instructor.find(params[:instructor_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @instructor = Instructor.find(params[:instructor_id])
    @booking.instructor = @instructor
    @booking.user = @instructor.user

    if @booking.save
      redirect_to confirmation_path(@booking)
    else
      flash[:alert] = 'Something went wrong'
    end
  end

  def update

  end

  def destroy

  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time, :price, :user_id, :instructor_id)
  end
end
