class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @event_space = EventSpace.find(params[:event_space_id])
    @booking.event_space = @event_space
    @booking.user = current_user
    if @booking.save
      redirect_to user_dashboard_path, status: :see_other
    else
      render "event_spaces/show", status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to user_dashboard_path, status: :see_other
    else
      render 'user_dashboard', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
