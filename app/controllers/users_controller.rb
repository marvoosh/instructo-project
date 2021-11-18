class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def view_bookings
    @user = User.find(params[:id])
    @bookings = @user.bookings
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :id)
  end
end
