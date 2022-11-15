class BookingsController < ApplicationController

  def new
    @user = current_user
    @booking = Booking.new
    @event_space = EventSpace.find(params[:event_space_id])
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @event_space = EventSpace.find(params[:event_space_id])
    @booking.user = @user
    if @booking.save
      redirect_to user_dashboard_path(@user), status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :event_space_id)
  end
end
