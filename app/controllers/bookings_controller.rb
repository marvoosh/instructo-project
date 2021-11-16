class BookingsController < ApplicationController

  def new
   @booking = Booking.new
   @instructor = Instructor.find(params[:instructor_id])
  end

  def create

  end

  def update

  end

  def destroy

  end

end
