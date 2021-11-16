class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def confirmation
    @booking = Booking.find(params[:booking_id])
  end
end
